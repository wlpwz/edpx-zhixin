{%extends 'c_base.tpl'%} {%block name='content'%}<style data-merge>{%fe_fn_c_css css='img'%}{%fe_fn_c_css css='table'%}.op_digital_series_price{color:#f80;font-weight:bold}.op_digital_series_colorInfo{display:inline-block;width:9px;height:9px;vertical-align:middle;overflow:hidden}.op_digital_series_white{width:7px;height:7px;border:1px solid #dcdcdc}.op_digital_series_infotable{border-collapse:collapse}.op_digital_series_infotable td{font-size:1em;line-height:1.54}</style><div> <div class="c-row"> <div class="c-span6"><a href="{%$tplData.url%}" target="_blank"><img class="c-img" src="{%$tplData.picUrl%}" /></a></div> <div class="c-span18 c-span-last"> <table cellspacing="0" cellpadding="0" class="op_digital_series_infotable"> <tr> <td>{%$tplData.price[0]['tip']|escape:'html'%}<span {%if $tplData.price[0]['hilight']%} class="op_digital_series_price"{%/if%}>{%$tplData.price[0]['num']|escape:'html'%}</span></td><td></td> </tr> <tr> <td>{%$tplData.baseInfo1|escape:'html'%}</td> <td>{%if $tplData.addInfo1%}{%$tplData.addInfo1|escape:'html'%}{%/if%}</td> </tr> <tr> <td>{%$tplData.baseInfo2|escape:'html'%}</td> <td>{%if $tplData.addInfo2%}{%$tplData.addInfo2|escape:'html'%}{%/if%}</td> </tr> {%if $tplData.colorTip%} <tr> <td colspan="2"> <div> <span>{%$tplData.colorTip|limitlen:12|escape:'html'%}</span>{%for $index=1 to 10%}{%if $tplData["colorInfo{%$index%}"]%}<span class="{%if $index>1%}c-gap-left-small {%/if%}{%if $tplData["colorInfo{%$index%}"]=="ffffff"%}op_digital_series_white {%/if%}op_digital_series_colorInfo" style="background-color:#{%$tplData["colorInfo{%$index%}"]|escape%}"></span>{%/if%}{%/for%} </div> </td> </tr> {%/if%} {%if $tplData.moreLink1[0]['tip']%} <tr> <td colspan="2"> <div> {%$moreLength = 0%} {%for $index=1 to 6%}{%if $tplData["moreLink{%$index%}"][0]['tip']%}{%$moreLength=$moreLength +(mb_strlen($tplData["moreLink{%$index%}"][0]['tip'],'utf-8')+strlen($tplData["moreLink{%$index%}"][0]['tip']))/2%}<a target="_blank"{%if $index>1%} class="c-gap-left"{%/if%} href="{%$tplData["moreLink{%$index%}"][0]['url']%}">{%$tplData["moreLink{%$index%}"][0]['tip']|escape:'html'%}</a>{%/if%}{%/for%} </div> </td> </tr> {%/if%} </table> </div> </div> <table class="c-table c-gap-top-small"> <tr> <th>{%$tplData.tableTitle[0]['title1']|escape:'html'%}</th> <th>{%$tplData.tableTitle[0]['title2']|escape:'html'%}</th> <th width="60px">{%$tplData.tableTitle[0]['title3']|escape:'html'%}</th> {%if $tplData.tableTitle[0]['title4']%} <th>{%$tplData.tableTitle[0]['title4']|escape:'html'%}</th> {%/if%} </tr> {%for $index=1 to 3%} {%if $tplData["rowInfo{%$index%}"][0]['info2']%} <tr> {%if $tplData.tableTitle[0]['title4']%} <td><a target="_blank" href='{%$tplData["rowInfo{%$index%}"][0]["info1url"]%}'>{%$tplData["rowInfo{%$index%}"][0]['info1']|limitlen:30|highlight:0%}</a></td> <td{%if $tplData.tableTitle[0]['hilight2']%} class="op_digital_series_price"{%/if%}>{%$tplData["rowInfo{%$index%}"][0]['info2']|limitlen:13|escape:'html'%}</td> <td{%if $tplData.tableTitle[0]['hilight3']%} class="op_digital_series_price"{%/if%}>{%$tplData["rowInfo{%$index%}"][0]['info3']|limitlen:13|escape:'html'%}</td> <td{%if $tplData.tableTitle[0]['hilight4']%} class="op_digital_series_price"{%/if%}>{%$tplData["rowInfo{%$index%}"][0]['info4']|limitlen:10|escape:'html'%}</td> {%else%} <td><a target="_blank" href='{%$tplData["rowInfo{%$index%}"][0]["info1url"]%}'>{%$tplData["rowInfo{%$index%}"][0]['info1']|limitlen:30|highlight:0%}</a></td> <td{%if $tplData.tableTitle[0]['hilight2']%} class="op_digital_series_price"{%/if%}>{%$tplData["rowInfo{%$index%}"][0]['info2']|limitlen:26|escape:'html'%}</td> <td{%if $tplData.tableTitle[0]['hilight3']%} class="op_digital_series_price"{%/if%}>{%$tplData["rowInfo{%$index%}"][0]['info3']|limitlen:10|escape:'html'%}</td> {%/if%} </tr> {%/if%} {%/for%} </table> {%if $tplData.moreInfo[0]['tip']%} <p class="c-gap-top"> <a target="_blank" href="{%$tplData.moreInfo[0]['url']%}" class="op_digital_series_moreinfo_a">{%$tplData.moreInfo[0]['tip']|escape:'html'%}</a> </p> {%/if%}</div>{%/block%}