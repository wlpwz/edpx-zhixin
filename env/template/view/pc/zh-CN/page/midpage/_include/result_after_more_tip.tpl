{%*
* @fileOverview 时效性中间页模板-黄反提示
* @author       常爽
* @version      1.0
* @date         2012/12/26
*%}{%* cl=3提示，为了提供最相关的结果，我们省略了一些内容相似的条目 *%}{%if ($bottomHint & 0x1) != 0%}{%$clUrlComponent = "&cl=0&rtt=1&bsst=1`$urlArgs.ct``$urlArgs.tn``$urlArgs.rn``$urlArgs.ie``$urlArgs.lm``$urlArgs.si``$urlArgs.ch``$urlArgs.sts``$urlArgs.z_type``$urlArgs.vit``$urlArgs.dsp`"%}<div style="font-size:0.8em;margin:0 20px 15px;">{%$hint_search_part1%}<a href="{%$searchAction|vui_escape:'html'%}?wd={%$query|vui_escape:'url'%}{%$clUrlComponent|vui_escape:'html'%}">{%$hint_search_part2%}</a>{%$hint_search_part3%}</div>{%/if%}{%* 时间提示 *%}{%if $urlPara.lm > 0%}{%$lmUrlComponent = "&rtt=1&bsst=1`$urlArgs.cl``$urlArgs.ct``$urlArgs.tn``$urlArgs.rn``$urlArgs.ie``$urlArgs.si``$urlArgs.ch``$urlArgs.sts``$urlArgs.z_type``$urlArgs.vit``$urlArgs.dsp`"%}<div style="font-size:0.8em;margin:0 20px 15px;">{%$hint_searchbytime_part1%}<a href="{%$searchAction|vui_escape:'html'%}?wd={%$query|vui_escape:'url'%}{%$lmUrlComponent|vui_escape:'html'%}">{%$hint_searchbytime_part2%}</a>{%$hint_searchbytime_part3%}</div>{%/if%}{%* 地区提示 *%}{%if $urlPara.z_type == 3%}{%$ztypeUrlComponent = "&rtt=1&bsst=1`$urlArgs.cl``$urlArgs.ct``$urlArgs.tn``$urlArgs.rn``$urlArgs.ie``$urlArgs.lm``$urlArgs.si``$urlArgs.ch``$urlArgs.sts``$urlArgs.vit``$urlArgs.dsp`"%}<div style="font-size:0.8em;margin:0 20px 15px;">{%$hint_searchbyzone_part1%}<a href="{%$searchAction|vui_escape:'html'%}?wd={%$query|vui_escape:'url'%}{%$ztypeUrlComponent|vui_escape:'html'%}">{%$hint_searchbyzone_part2%}</a>{%$hint_searchbyzone_part3%}</div>{%/if%}{%if ($bottomHint & 0x8) != 0%}<div style="font-size:0.8em;margin:0 20px 15px;">{%$hint_omit|vui_escape:'html'%}</div>{%/if%}