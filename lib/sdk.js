/***************************************************************************
*
* Copyright (C) 2014 Baidu.com, Inc. All Rights Reserved
*
***************************************************************************/

/**
 * @file sdk.js ~ 2014-03-21 11:49
 * @author sekiyika (px.pengxing@gmail.com)
 * @description
 *  获取配置文件，并且启动edp-webserver的入口文件
 */


var path = require('path');
var shelljs = require('shelljs');
var edp = require('edp-core');

var util = require('./util');
var indexer = require('./indexer');

var root;

exports.getRoot = function() {
    return root;
};

/**
 * 校验启动的环境必选因素
 */
function checkEnv(gConf) {
    // check php 
    if(!gConf.php) {
        if(!shelljs.which('php')) {
            edp.log.fatal(
                '>> You should add php in your path, or add exports.php = "/usr/bin/php" in edpx-zhixin-config.js file'
            );
            return false;
        }
    }

    return true;
}

exports.start = function(conf) {
    /**
     * 得到edpx-zhixin-config.js模块
     * 
     * @type {Module}
     */
    var gConf;

    // 监控程序退出的各种问题
    process.on('exit', function(code) {
        switch (process._errno) {
            case 'EMFILE': 
                edp.log.error('如果你使用mac，可以使用$ ulimit -n 2048来扩大同时打开的文件数量');
                break;
        }
    });

    try {

        gConf = require(
                path.resolve(
                    util.findFile(conf.config, 'edpx-zhixin-config.js'), 
                    './edpx-zhixin-config'
                )
            );
    }
    catch (ex) {
        edp.log.info('>> Not found config file `edpx-zhixin-config.js`.');
        process.exit(1);
    }

    // 采用当前目录作为默认root
    if(!gConf.server.documentRoot) {
        root = process.cwd();
    } else {
        root = path.normalize(''
            + util.findFile(conf.config, 'edpx-zhixin-config.js') 
            + path.sep
            + gConf.server.documentRoot
        ) || process.cwd();
    }
    // 使用8848作为默认端口
    if(!gConf.server.port) {
        gConf.server.port = 8848;
    }

    // 校验环境
    if(!checkEnv(conf)) {
        return;
    }

    if(!gConf.proxy.hostname) {
        gConf.proxy.hostname = 'www.baidu.com';
    }
    if(!gConf.proxy.port) {
        gConf.proxy.port = 80;
    }

    // 建立query到数据的索引
    indexer.index(root)
        .done(function() {
            // watch配置文件的改动
            var watch = require('./watch');
            watch.watchConfig(path.resolve(root));
            // 根据indexer建立的索引来watch文件
            watch.watchRelatedFiles();

            // 启动webserver
            require('./server').start(root, gConf);
        })
        .fail(function(er) {
            edp.log.fatal(er);
        });

    /**
     * 全量建立索引
     */
    function buildIndex() {
        setTimeout(function() {
            var def = indexer.index(root);
            def.done(function() {
                buildIndex();
            }).fail(function(er) {
                edp.log.fatal(er);
            });
        }, 5000);
    }
    // 每隔5s全量一次
    buildIndex();

};
