{%extends file='baidu/page.tpl'%} {%block name="foot_script_pre_ext"%}<script type="text/javascript">setTimeout(function() {var state = 0,getAjax = function() {var xmlHttp = null;try {xmlHttp = window.XMLHttpRequest ? new XMLHttpRequest() : new ActiveXObject("Microsoft.XMLHTTP");} catch(er) {state = 1; }return xmlHttp;},xmlHttp = getAjax(),img = new Image(),imgsrc = 'http://www.baidu.com/nocache/fesplg/s.gif?product_id=45&page_id=901',log_path = [],{%if $randNum < 3333%}serverUrl = 'http://www.baidu.com/r/spn/spt',sam_type = 'chunked';{%else if $randNum>=3333 && $randNum<6666 %}serverUrl = 'http://www.baidu.com/r/spn/sptnc';sam_type = 'no_chunked';{%else%}serverUrl = 'http://www.baidu.com/nocache/sptnc/nc.js';sam_type = 'no_chunked_js';{%/if%}xmlHttp.onreadystatechange = function() {if(xmlHttp.readyState==4){state = xmlHttp.status; var data = xmlHttp.responseText,res_length = data.length;log_path.push(imgsrc);log_path.push('&sam_type=' + sam_type);log_path.push('&chunked_state=' + state + '&chunked_length=' + res_length);try {eval(data);log_path.push('&state=success');} catch(er) {log_path.push('&state=error');}img.src = window['_WWW_IMG_CHUNKED_RS'] = log_path.join('');}};try {xmlHttp.open('GET',serverUrl,true);xmlHttp.send();} catc{%*i*%}h(er) {state = 3; };},300);</script>{%/block%}{%block name="__fis_page_header_block__"%}{%include file="widget/baidu/module_static_include/module_static_include.tpl" caching%}{%/block%}