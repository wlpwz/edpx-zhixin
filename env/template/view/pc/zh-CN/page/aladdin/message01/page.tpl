{%extends 'base.tpl'%} {%block name='content'%}<script >function _aMC(o) { var t = o, i = -1; while (t = t.parentNode) { i = parseInt(t.getAttribute('id')); if (i > 0) return i; }}function jI(obj) {var t = obj;var i = 0;while (t = t.parentNode) {i = parseInt(t.getAttribute('id'));if (i > 0) {break;}}var ar = t.getElementsByTagName('a');for (var i = 0; i < ar.length; i++) {if (obj == ar[i]) return i - 1;}return ar.length - 1;}</script><style >#op_message01_content1{padding-left:6px;vertical-align:top;padding-top:3px}#op_message01_main{border:{%*i*%}0 none}#op_message01_image{vertical-align:top;padding-top:5px}</style>{%$FE_GBVAR.wrapper_prefix%}{%fe_fn_title_prefix%}{%fe_fn_title title="{%$tplData.title%}" url="{%$tplData.url%}"%}{%fe_fn_title_suffix title="{%$tplData.title%}" url="{%$tplData.url%}"%}<table id="op_message01_main"><tr><td id="op_message01_image"><a onmousedown="return c({'fm':'alop','url':this.href,'p1':_aMC(this),'p2':0,'p3':1});" href="{%$tplData.icon[0]['iconlink']%}" target="_blank"><img src="{%$tplData.icon[0]['iconaddress']%}" style="width:48px;height:48px;border:0px solid #7493E5;"/></a></td><td id="op_message01_content1"><div><font size="-1">{%$tplData.content1|highlight:0%}<a target="_blank" onmousedown="return c({'fm':'alop','title':this.innerHTML,'url':this.href,'p1':_aMC(this),'p2':jI(this)})"  href="{%$tplData.sendlink[0]['linkurl']%}">{%$tplData.sendlink[0]['linkcontent']%}<span style="font-family: simsun;">&gt;&gt;</span></a></font></div>{%if $tplData.content2!=""%}<a target="_blank" onmousedown="return c({'fm':'alop','title':this.innerHTML,'url':this.href,'p1':_aMC(this),'p2':jI(this)})"  href="{%$tplData.link2[0]['linkurl']%}">{%$tplData.content2|highlight:0%}</a>　 {%/if%}{%if $tplData.content3!=""%}<a target="_blank" onmousedown="return c({'fm':'alop','title':this.innerHTML,'url':this.href,'p1':_aMC(this),'p2':jI(this)})"  href="{%$tplData.link3[0]['linkurl']%}">{%$tplData.content3|highlight:0%}</a>　 {%/if%}{%if $tplData.content4!=""%}<a target="_blank" onmousedown="return c({'fm':'alop','title':this.innerHTML,'url':this.href,'p1':_aMC(this),'p2':jI(this)})"  href="{%$tplData.link4[0]['linkurl']%}">{%$tplData.content4|highlight:0%}</a>　 {%/if%}{%if $tplData.content5!=""%}<a target="_blank" onmousedown="return c({'fm':'alop','title':this.innerHTML,'url':this.href,'p1':_aMC(this),'p2':jI(this)})"  href="{%$tplData.link5[0]['linkurl']%}">{%$tplData.content5|highlight:0%}</a>　 {%/if%}{%if $tplData.content6!=""%}<a target="_blank" onmousedown="return c({'fm':'alop','title':this.innerHTML,'url':this.href,'p1':_aMC(this),'p2':jI(this)})"  href="{%$tplData.link6[0]['linkurl']%}">{%$tplData.content6|highlight:0%}</a>{%/if%}</td> </tr></table><div><font size="-1"><span style="color:#008000;">duanxin.baidu.com</span>{%if $tplData.showlamp!=""%} - <a onmousedown="return c({'fm':'alop','title':this.innerHTML,'url':this.href,'p1':_aMC(this),'p2':jI(this)})" target="_blank" href="http://open.baidu.com/"  class="op_LAMP" >{%$FE_GBVAR.aladdin_txt%}</a>{%/if%}</font></div>{%$FE_GBVAR.wrapper_suffix%}{%/block%}