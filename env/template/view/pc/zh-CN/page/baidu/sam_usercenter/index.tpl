{%extends file='baidu/index.tpl'%} {%block name="index_head_style_ext"%}<style >#user_center{position:relative;display:inline-block}#user_center .user_center_btn{padding-right:11px;margin-right:5px;background:url("http://s1.bdstatic.com/r/www/cache/static/global/img/bg_ba15d188.png") no-repeat right -195px}.userMenu{width:64px;position:absolute;right:7px;_right:2px;top:15px;top:14px\9;*top:15px;padding-top:4px;display:none;*background:#fff}</style>{%/block%}{%block name="index_login"%}<div id="u">{%if $isUserLogin == 1%}<span id="user"><a href="{%if strlen($username)>0%}http://www.baidu.com/p/{%$username%}?from=mn{%else%}https://passport.baidu.com/v2/?ucenteradduname{%/if%}" class="un" name="tj_home">{%$userDisplayInfo%}</a><div id="userMenu" class="userMenu"><ul><li><a href="{%if strlen($username)>0%}http://www.baidu.com/p/{%$username%}?from=mn{%else%}https://passport.baidu.com/v2/?ucenteradduname{%/if%}" name="tj_myhome">我的主页</a></li><li><a href="http://passport.baidu.com" name="tj_user">个人资料</a></li><li class="nl"><a href="http://passport.baidu.com/?logout&tpl=mn&u=http%3A%2F%2Fwww.baidu.com%2F" name="tj_logout">退出</a></li></ul></div></span>|<span id="user_center"><a class="user_center_btn" href="http://i.baidu.com/center" onmousedown="return user_c({'fm':'set','tab':'uc_center'})">个人中心</a><div id="userCenterMenu" class="userMenu"><ul><li><a href="http://i.baidu.com/my/collect" onmousedown="r{%*i*%}{%*i*%}eturn user_c({'fm':'set','tab':'uc_collect'})">我的收藏</a></li><li><a href="http://i.baidu.com/my/cal" onmousedown="return user_c({'fm':'set','tab':'uc_cal'})">我的日历</a></li><li><a href="http://i.baidu.com/my/accu" onmousedown="return user_c({'fm':'set','tab':'uc_accu'})">我的举报</a></li></ul></div></span>|<a href="{%$preferences_url%}" name="tj_setting">搜索设置</a>{%if $tplData.passport.isSupercenterErr != 1%}|<a href="/home/show/home{%if $urlPara.dsp%}?dsp=pc{%else%}{%if $urlPara.tn || $urlPara.ch || $urlPara.bar%}?tn={%if $urlPara.tn%}{%$urlPara.tn|vui_escape:'url'%}{%/if%}&ch={%if $urlPara.ch%}{%$urlPara.ch|vui_escape:'url'%}{%/if%}&bar={%if $urlPara.bar%}{%$urlPara.bar|vui_escape:'url'%}{%/if%}{%/if%}{%/if%}" name="tj_supper" class="last">新版首页</a>{%/if%}{%else%}<a href="{%$preferences_url%}" name="tj_setting">搜索设置</a>|<a href="https://passport.baidu.com/v2/?login&tpl=mn&u=http%3A%2F%2Fwww.baidu.com%2F" name="tj_login" id="lb" onclick="return false;">登录</a><a href="https://passport.baidu.com/v2/?reg&regType=1&tpl=mn&u=http%3A%2F%2Fwww.baidu.com%2F" target="_blank" name="tj_reg" class="reg">注册</a>{%/if%}</div>{%block name="__fis_page_header_block__"%}{%include file="widget/baidu/module_static_include/module_static_include.tpl" caching%}{%/block%}{%/block%}{%block name="js_foot_script"%}<script>var bds={se:{},comm : {ishome : 1,sid : "{%$urlPara.sid%}",user : "{%$userDisplayInfo|vui_escape:'javascript'%}",username : "{%$username|vui_escape:'javascript'%}",sugHost : "{%$sugHost%}",personalData : "{%if $tplData.queryInfo.personalData%}{%$tplData.queryInfo.personalData|vui_escape:'javascript'%}{%/if%}",loginAction : []}}</script><script type="text/javascript" src="http://s1.bdstatic.com/r/www/cache/static/global/js/home_299f7566.js" charset="utf-8"></script><script>var bdUser = {%if $isUserLogin == 1%}"{%$username|vui_escape:'javascript'%}"{%else%}null{%/if%};var w=window,d=document,n=navigator,k=d.f.wd,a=d.getElementById("nv").getElementsByTagName("a"),isIE=n.userAgent.indexOf("MSIE")!=-1&&!window.opera;(function(){if(/q=([^&]+)/.test(location.search)){k.value=decodeURIComponent(RegExp["\x241"])}})();if(n.cookieEnabled){bds.se.sug();};function addEV(o, e, f){if(w.attachEvent){o.attachEvent("on" + e, f);}else if(w.addEventListener){ o.addEventListener(e, f, false);}}function G(id){return d.getElementById(id);}function ns_c(q){var p = encodeURICompon{%*i*%}ent(window.document.location.href), sQ = '', sV = '', mu='', img = window["BD_PS_C" + (new Date()).getTime()] = new Image();for (v in q) {sV = q[v];sQ += v + "=" + sV + "&";} mu= "&mu=" + p ;img.src = "http://nsclick.baidu.com/v.gif?pid=201&pj=www&rsv_sid={%$urlPara.sid%}&" + sQ + "path="+p+"&t="+new Date().getTime();return true;}if(/\bbdime=[12]/.test(d.cookie)){document.write('<script src="' + "http://s1.bdstatic.com/r/www/cache/static/ime/js/openime_b157f449.js" + '" charset="utf-8"><\/script>');}(function(){var u = G("u").getElementsByTagName("a"), nv = G("nv").getElementsByTagName("a"), lk = G("lk").getElementsByTagName("a"), un = "";var tj_nv = ["news","tieba","zhidao","mp3","img","video","map"];var tj_lk = ["baike","wenku","hao123","more"];un = bds.comm.u{%*i*%}ser == "" ? "" : bds.comm.user;function _addTJ(obj){addEV(obj, "mousedown", function(e){var e = e || window.event;var target = e.target || e.srcElement;ns_c({'fm':'behs','tab':target.name||'tj_user','un':encodeURIComponent(un)});});}for(var i = 0; i < u.length; i++){_addTJ(u[i]);}for(var i = 0; i < nv.length; i++){nv[i].name = 'tj_' + tj_nv[i];}for(var i = 0; i < lk.length; i++){lk[i].name = 'tj_' + tj_lk[i];}})();(function() {var links = {'tj_news': ['word', 'http://news.baidu.com/ns?tn=news&cl{%*i*%}=2&rn=20&ct=1&ie=utf-8'],'tj_tieba': ['kw', 'http://tieba.baidu.com/f?ie=utf-8'],'tj_zhidao': ['word', 'http://zhidao.baidu.com/search?pn=0&rn=10&lm=0'],'tj_mp3': ['key', 'http://music.baidu.com/search?fr=ps&ie=utf-8'],'tj_img': ['word', 'http://image.baidu.com/i?ct=201326592&cl=2&nc=1&lm=-1&st=-1&tn=baiduimage&istype=2&fm=&pv=&z=0&ie=utf-8'],'tj_video': ['word', 'http://video.baidu.com/v?ct=301989888&s=25&ie=utf-8'],'tj_map': ['wd', 'http://map.baidu.com/?newmap=1&ie=utf-8&s=s'],'tj_baike': ['w{%*i*%}ord', 'http://baike.baidu.com/search/word?pic=1&sug=1&enc=utf8'],'tj_wenku': ['word', 'http://wenku.baidu.com/search?ie=utf-8']};var domArr = [G('nv'), G('lk'),G('cp')],kw = G('kw');for (var i = 0, l = domArr.length; i < l; i++) {domArr[i].onmousedown = function(e) {e = e || window.event;var target = e.target || e.srcElement,name = target.getAttribute('name'),items = links[name],reg = new RegExp('^\\s+|\\s+\x24'),key = kw.value.replace(reg, '');if (items) {if (key.length > 0) {var wd = items[0],{%*i*%} url = items[1],url = url + ( name === 'tj_map' ? encodeURIComponent('&' + wd + '=' + key) : ( ( url.indexOf('?') > 0 ? '&' : '?' ) + wd + '=' + encodeURIComponent(key) ) );target.href = url;} else {target.href = target.href.match(new RegExp('^http:\/\/.+\.baidu\.com'))[0];}}name && ns_c({'fm': 'behs','tab': name,'query': encodeURIComponent(key),'un': encodeURIComponent(bds.comm.user || '') });};}})();addEV(w,"load",function(){k.focus()});w.onunload=function(){};</script><script type="text/javas{%*i*%}cript" src="http://s1.bdstatic.com/r/www/cache/static/global/js/tangram-1.3.4c1.0_07038476.js"></script><script type="text/javascript" src="http://s1.bdstatic.com/r/www/cache/static/user/js/sam_u_8218a2fd.js" charset="utf-8"></script>{%if $isUserLogin == 1%}<script>baidu.on(window,'load',function(){var s = document.createElement("script");s.charset="utf-8";s.src="{%$STATIC_DOMAIN_SUPERPAGE%}{%$JS_WWW_URSTATIC_INDEX%}";document.body.appendChild(s);});</script>{%/if%}<script>try{document.cookie="WWW_ST=;expires=Sat, 01 Jan 2000 00:00:00 GMT";baidu.on(document.forms[0],"submit",function(){var _t=new Date().getTime();document.cookie = "WWW_ST=" + _t +";expires=" + new Date(_t + 10000).toGMTString()})}catch(e){}</script>{%if $urlPara['intrSid']%}<script>var bds = bds||{}; bds.comm = bds.comm||{};bds.comm.intrSid = "{%$urlPara['intrSid']%}";</script><script src="http://cq01-qa-bu-qa00.cq01.baidu.com:8028/Public/js/tips_search.js"></script>{%/if%}{%/block%}{%block name="__fis_page_header_block__"%}{%include file="widget/baidu/module_static_include/module_static_include.tpl" caching%}{%/block%}