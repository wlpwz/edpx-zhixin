{%extends 'base_div.tpl'%} {%block name='content'%}<style type="text/css">.op-zx-tour-price-container{color:#333;font-size:13px;overflow:hidden}.op-zx-tour-price-container h2{margin:0 0 8px 0;font-weight:normal;font-size:16px}.op-zx-tour-price-container img{width:68px;height:68px;display:block;border:1px solid #ccc}.op-zx-tour-price-content{margin:9px 0 0 0;padding:9px 0 0 0;border-top:1px solid #f3f3f3}.op-zx-tour-price-container li{padding:8px 0}.op-zx-tour-price-horizontal-dividing-line{border:0;border-top:1px solid #f3f3f3}.op-zx-tour-price-{%*i*%}item-table p{line-height:22px;padding-left:10px;font-size:13px}.op-zx-tour-price-img-container{width:70px;height:70px}.op-zx-tour-price-summary{float:left}.op-zx-tour-price-price{float:right;margin-right:28px;font-size:14px;color:#ff8a00;font-weight:bold}.op-zx-tour-price-sep{display:inline-block;padding:0 0 0 10px;color:#d8d8d8;margin-right:10px}.op-zx-tour-price-label{color:#666}</style><div class="op-zx-tour-price-container"> <h2><a href="{%$tplData.url%}" target="_blank">{%$tplData.title|highlight:0%} 热门旅游线路报价_去哪儿网</a></h2> {%if $tplData.tab && $tplData.tab[0]%} {%if $tplData.tab|count>1%} {%foreach $tplData.tab as $item%} {%if $item@index>3%}{%break%}{%/if%} {%if $item@index>0%}<span class="op-zx-tour-price-sep">|</span>{%/if%} <a href="{%$item['url']%}" target="_blank" class="op-zx-tour-price-tabs">{%$item['title']|escape%}</a> {%/foreach%} {%/if%} <ul {%if $tplData.tab && $tplData.tab|count>1%}class="op-zx-tour-price-content"{%/if%}> {%$tempDataCount=0%} {%foreach $tplData.item as $ls%} {%if $ls['tabid']==$tplData.tab[0]['id']%}{%$tempDataCount=$tempDataCount+1%} {%if $tempDataCount<4%} <li class="{%if $tempDataCount>1%} op-zx-tour-price-horizontal-dividing-line{%/if%}"{%if $tempDataCount==1%} style="padding-top:0px"{%/if%}> <table class="op-zx-tour-price-item-table" width="100%" cellspacing="0" cellpadding="0"> <tr> <td class="op-zx-tour-price-img-container"><a href="{%$ls['url']%}" target="_blank"><img src="{%$ls['img']%}"></a></td> <td class="op-zx-tour-price-text-container"> <p> <a href="{%$ls['url']%}" target="_blank">{%$ls['title']|limitlen:60|escape%}</a> </p> <p> <span class="op-zx-tour-price-summary">{%$ls['summary']|limitlen:60|escape%}</span> <span class="op-zx-tour-price-price">￥{%$ls['price']%}</span> <div style="clear:both"></div> </p> <p> <span class="op-zx-tour-price-label">来自：</span>{%if $ls['fromurl']%}<a href="{%$ls['fromurl']%}" target="_blank">{%/if%}{%$ls['fromtitle']|limitlen:30|escape%}{%if $ls['fromurl']%}</a>{%/if%} </p> </tr> </table> </li> {%else%} {%break%} {%/if%} {%/if%} {%/foreach%} </ul> {%/if%}</div>{%/block%}