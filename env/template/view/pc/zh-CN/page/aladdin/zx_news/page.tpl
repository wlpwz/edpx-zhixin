{%extends 'base.tpl'%} {%block name='content'%}<tr><td class="f" data-fm="alrt" style="width:100%"> <div class="op_zx_renwu_news"> <h2>{%if $tplData.classicInfo&&$tplData.classicInfo.itemUrl%}<a target="_blank" href="{%$tplData.classicInfo.itemUrl%}">{%/if%}{%$queryInfo["wordNoSyntax"]|highlight:0%}的最新相关消息{%if $tplData.classicInfo&&$tplData.classicInfo.itemUrl%}</a>{%/if%}</h2> <table class="op_zx_renwu_news_content"> <tr> {%if $tplData.ThumURL0%} <td class="op_zx_renwu_news_content_left"> <a hidefocus="true" href="{%$tplData.SubTitleUrl0%}" target="_blank"><img src="{%$tplData.ThumURL0%}" /></a> </td> {%/if%} <td class="op_zx_renwu_news_content_right"> {%for $item=0 to 3%} {%if $tplData["SubTitle{%$item%}"]&&trim($tplData["SubTitle{%$item%}"])%} <p> {%*{%if $tplData.ThumURL0%}
                        <a class="op_zx_renwu_news_content_subject" href='{%$tplData["SubTitleUrl{%$item%}"]%}' target="_blank">{%$tplData["SubTitle{%$item%}"]|limitlen:40|highlight:0%}</a>
                        {%else%}*%} <a class="op_zx_renwu_news_content_subject" href='{%$tplData["SubTitleUrl{%$item%}"]%}' target="_blank">{%$tplData["SubTitle{%$item%}"]|limitlen:50|highlight:0%}</a> {%*{%/if%}*%} <span class="op_zx_renwu_news_content_from">{%$tplData["SiteName{%$item%}"]%}</span> <span class="op_zx_renwu_news_content_time"> {%$temp = time()-$tplData["PostTime{%$item%}"]%} {%if $temp < 3600%}1小时内{%elseif $temp < 86400%}{%(int)($temp/3600)%}小时前{%else%}{%(int)($temp/86400)%}天前{%/if%} </span> </p> {%if $item == 0 && $tplData.SubAbs0%} <p>{%$tplData.SubAbs0|limitlen:160|highlight:0%}</p> {%/if%} {%else%} {%break%} {%/if%} {%/for%} </td> </tr> </table></div></td></tr>{%/block%}