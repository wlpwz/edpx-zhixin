{%extends 'base.tpl'%} {%block name='content'%}{%$FE_GBVAR.wrapper_prefix%}<style>.op-definitive_answer_container{width:636px;padding-bottom:15px}.op-definitive_answer_main{width:599px;padding:16px 17px 17px 16px;border:1px solid #ebebeb;box-shadow:0 1px 0 #f7f7f7;-moz-box-shadow:0 1px 0 #f7f7f7;-webkit-box-shadow:0 1px 0 #f7f7f7;filter:progid:DXImageTransform.Microsoft.Shadow(Strength=1,Direction=180 Color='#e5e5e5');background-color:#fff;overflow:hidden}.op-definitive_answer_area1{{%if strlen($tplData.result[0]['attrquery'])<26%}font-size:28px;height:28px;line-height:28px;{%elseif strlen($tplData.result[0]['attrquery'])<28%}font-size:26px;height:26px;line-height:26px;{%elseif strlen($tplData.result[0]['attrquery'])<30%}font-size:24px;height:24px;line-height:24px;{%elseif strlen($tplData.result[0]['attrquery'])<36%}font-size:22px;height:22px;line-height:22px;{%else%}font-size:20px;height:20px;line-height:20px;{%/if%}font-family:"Microsoft YaHei"!important}.op-definitive_answer_item{overflow:hidden}.op-definitive_answer_main a{text-decoration:none}.op-definitive_answer_main a:hover{text-decoration:underline}.op-definitive_answer_area{margin-left:4px}.op-definitive_answer_area2{margin-top:10px;color:#333}.op-definitive_answer_area2 a,.op-definitive_answer_area2 a:hover{color:#333}.op-definitive_answer_tools{text-align:right;margin-right:12px;color:#999;font-size:12px;margin-top:-26px}.op-definitive_answer_too{%*i*%}ls a{color:#999;cursor:pointer;text-decoration:none;font-size:12px}.op-definitive_answer_tools a:hover{color:#999;cursor:pointer;text-decoration:underline;font-size:12px}.op-definitive_answer_img{float:left;margin-right:14px}.op-definitive_answer_img img{border:1px solid #d2d2d2;{%if $tplData.result[0]['normalpic']%}width:90px;{%else%}width:120px;{%/if%}}.op-definitive_answer_feedback{color:#00c;font-size:13px;font-weight:bold;display:none;cursor:pointer}</style><div class="c-abstract"><div class="op-definitive_answer_container"> <div class="op-definitive_answer_main"> <div class="op-definitive_answer_item"> <div class="op-definitive_answer_feedback">有错误?</div> {%if $tplData.result[0]['normalpic'] || $tplData.result[0]['bigpic']%} <div class="op-definitive_answer_img"> {%$picURL = ($tplData.result[0]['normalpic'])?$tplData.result[0]['normalpic']:$tplData.result[0]['bigpic'] scope='global'%} {%if $tplData.result[0]['search_type'] && $tplData.result[0]['search_type']=='entity'%} <a href="http://www.baidu.com/s?wd={%if $tplData.QueryAnalyse['ENTITY']%}{%$tplData.QueryAnalyse['ENTITY']|escape:'url'%}{%else%}{%$tplData.QueryAnalyse[0]['ENTITY']|escape:'url'%}{%/if%}" target="_blank"  title="{%if $tplData.QueryAnalyse['ENTITY']%}{%$tplData.QueryAnalyse['ENTITY']|escape:'html'%}{%else%}{%$tplData.QueryAnalyse[0]['ENTITY']|escape:'html'%}{%/if%}"> {%elseif $tplData.result[0]['search_type'] && $tplData.result[0]['search_type']=='value'%} <a href="http://www.baidu.com/s?wd={%$tplData.result[0]['attrquery']|escape:'url'%}" target="_blank"  title="{%$tplData.result[0]['attrquery']|escape:'html'%}"> {%/if%} <img src="{%$picURL|escape:'html'%}"/> {%if $tplData.result[0]['search_type']%} </a> {%/if%} </div> {%/if%} <div class="op-definitive_answer_area"> <div class="op-definitive_answer_area1"> {%if $tplData.result[0]['search_type'] && $tplData.result[0]['search_type']=='value'%} <a href="http://www.baidu.com/s?wd={%$tplData.result[0]['attrquery']|escape:'url'%}" target="_blank"> {%/if%} {%$tplData.result[0]['attrquery']|limitlen:38|escape:'html'%} {%if $tplData.result[0]['search_type'] && $tplData.result[0]['search_type']=='value'%} </a> {%/if%} </div> <div class="op-definitive_answer_area2"> <a href="http://www.baidu.com/s?wd={%if $tplData.QueryAnalyse['ENTITY']%}{%$tplData.QueryAnalyse['ENTITY']|escape:'url'%}{%else%}{%$tplData.QueryAnalyse[0]['ENTITY']|escape:'url'%}{%/if%}" target="_blank">{%if $tplData.QueryAnalyse['ENTITY']%}{%$tplData.QueryAnalyse['ENTITY']|escape:'html'%}{%else%}{%$tplData.QueryAnalyse[0]['ENTITY']|escape:'html'%}{%/if%}</a>{%if $tplData.result[0]['appendinfo']%}<span {%if strlen($tplData.result[0]['appendinfo'])>24%} title="{%$tplData.result[0]['appendinfo']|escape:'html'%}"{%/if%} >({%$tplData.result[0]['appendinfo']|limitlen:16|escape:'html'%})</span>{%/if%},{%$tplData.result[0]['attrdisp']|escape:'html'%} </div> </div> </div> </div> <div class="op-definitive_answer_tools" > {%if $tplData.result[0]['sourcename']%}<span  style="margin-right:8px;">来自<a href="{%$tplData.result[0]['sourcelink']|escape:'html'%}" target="_blank">{%$tplData.result[0]['sourcename']|escape:'html'%}</a></span><span  style="color:#ccc">|</span>{%/if%}<span  style="margin-left:8px;"><a class="op-definitive_answer_tools_fb" href="javascript:;" data-click="{info:'报错'}">报错</a></span> </div> </div></div><script>A.init(function(){var T = A.baidu, _this = this;T.event.on(_this.qq("op-definitive_answer_tools_fb") ,"mousedown", function(){baidu.dom.setStyles(this, {display:"none"});var ele = T.dom.create("span");ele.innerHTML = "感谢反馈";baidu.dom.insertAfter(ele, this);});});</script>{%$FE_GBVAR.wrapper_suffix%}{%/block%}