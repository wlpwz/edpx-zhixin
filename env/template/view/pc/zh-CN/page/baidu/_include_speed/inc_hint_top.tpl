{%if $pageNo == 1%}{%$hintUrlComponent = "`$urlArgs.cl``$urlArgs.ct``$urlArgs.tn``$urlArgs.rn``$urlArgs.ie``$urlArgs.lm``$urlArgs.si``$urlArgs.ch``$urlArgs.sts``$urlArgs.z_type``$urlArgs.vit``$urlArgs.dsp`"%}{%* 黄反提示 *%}{%if ($topHint & 0x1000) != 0%}<p style="margin:0 15px 10px 0"><b><font class="f14">{%$hint_filter_forpage%}</font></b></p>{%/if%}{%* SE提示 *%}{%if ($topHint & 0x4) != 0%}<p class="hit_top"><strong class=f14>{%$hint_se%}<span class="jc">{%$seNum = count($tplData.rsseResult.seword)%}{%for $index=0 to $seNum-1%}{%$seWord = $tplData.rsseResult.seword[$index]%}<a href="{%$searchAction%}?wd={%$seWord|vui_escape:'url'%}&f=12&rsp={%$index%}&oq={%$query|vui_escape:'url'%}{%$hintUrlComponent%}">{%$seWord|vui_escape:'html'%}</a>&nbsp;{%/for%}</span></strong><br></p>{%/if%}{%if ($query == 'baidu' || $query == '百度') && !$urlPara.dsp%}<div class="sethf"><span class="set_f" id="set_f">如果经常使用百度搜索，建议您：<a href="http://www.baidu.com/search/baidukuijie_mp.html" target="_blank" onmousedown="return ns_c({'fm':'sethf_click','tab':'topdesktop','pos':1})">把百度添加到桌面</a></span><span class="set_h" id="set_h">如果经常使用百度搜索，建议您：<a href="http://www.baidu.com/search/baidukuijie_mp.html" target="_blank" onmousedown="return ns_c({'fm':'sethf_click','tab':'topdesktop_home','pos':1})">把百度添加到桌面</a></span></div>{%/if%}{%* 引号提示 *%}{%if ($topHint & 0x8000) != 0%}<p class="hit_top"><font class="f14"><b>{%$hint_quet_part1%}<a href="{%$searchAction%}?wd={%$queryNopunc|vui_escape:'url'%}{%$hintUrlComponent%}">{%$queryNopunc|vui_escape:'html'%}</a>{%$hint_quet_part2%}<a href="{%$www_domain%}/search/page_feature.html#0904" target="_blank">{%$hint_quet_part3%}</a>{%$hint_quet_part4%}</b></font><br></p>{%/if%}{%* 书名号提示 *%}{%if ($topHint & 0x8) != 0%}<p class="hit_top"><font class=f14><b>{%$hint_bookname_part1%}<a href="{%$searchAction%}?wd={%$queryNopunc|vui_escape:'url'%}{%$hintUrlComponent%}">{%$queryNopunc|vui_escape:'html'%}</a>{%$hint_bookname_part2%}<a href="{%$www_domain%}/search/page_feature.html#0904" target="_blank">{%$hint_bookname_part3%}</a>{%$hint_bookname_part4%}</b></font><br></p>{%/if%}{%* 长串提示 *%}{%if ($topHint & 0x1) != 0%}<p class="hit_top"><font class=f14><b>{%$hint_longstr_part1_s%}{%$tplData.queryInfo.extraStr|vui_escape:'html'%}{%$hint_longstr_part2%}</b></font><br></p>{%/if%}{%* site语法提示 *%}{%if ($topHint & 0x2000) != 0%}<p class="site_tip"><strong>找到相关结果数{%$tplData.asResult.asDataDispNum|format_int%}个。</strong><br>此数字是估算值，网站管理员如需了解更准确的索引量，请使用<a href="http://sitemap.baidu.com/" target="_blank">百度站长平台</a>或<br><a href="http://tongji.baidu.com/" target="_blank">百度统计</a>。</p>{%/if%}{%* 邮编提示 *%}{%if ($topHint & 0x40) != 0%}<table cellpadding="0" cellspacing="0"><tr><td class=f><a {%if $needubs == 1%} onmousedown="return c({'fm':'hint','tab':'pcode'})" {%/if%} href="{%$youbian_domain%}{%$searchAction%}?word={%$query|vui_escape:'url'%}&tn=baiduyb&ct=2097152&cl=0&si=youbian.baidu.com" target="_blank" style="line-height:28px"><font size="3"><em>{%$query|vui_escape:'html'%}</em>{%$hint_postcode_part1%}</a><br><font size=-1>{%$hint_postcode_part2%}<br><font color="{%$style_site_color%}">youbian.baidu.com</font><br></font></td></tr></table><br>{%/if%}{%* 黄反拥有较高级别 *%}{%if ($topHint & 0x1000) == 0%}{%* 阳光行动-打字类 *%}{%foreach $tplData.queryInfo.promptNode as $idLen%}{%if $idLen.id == '1'%}<table cellpadding="0" cellspacing="0" border ="0" class="sftip"><tr><td><strong>百度提示您：</strong><span class="sf_con">请选择信誉有保障的网络招聘渠道。详见《<a href="http://jingyan.baidu.com/article/64d05a029bd52ade55f73bef.html?fr=ps" target="_blank">网络招聘安全指南</a>》</span></td></tr></table>{%/if%}{%/foreach%}{%* 阳光行动-物流快递类 *%}{%foreach $tplData.queryInfo.promptNode as $idLen%}{%if $idLen.id == '2'%}<table cellpadding="0" cellspacing="0" border ="0" class="sftip"><tr><td><strong>百度提示您：</strong><span class="sf_con">网上可能存在虚假不良物流快递信息，请谨慎辨别，选择正规物流公司。</span></td></tr></table>{%/if%}{%/foreach%}{%* 阳光行动-充值类 *%}{%foreach $tplData.queryInfo.promptNode as $idLen%}{%if $idLen.id == '3'%}<table cellpadding="0" cellspacing="0" border ="0" class="sftip"><tr><td><strong>百度提示您：</strong><span class="sf_con">网上可能存在虚假不良充值类信息，请谨慎辨别，选择正规渠道充值。</span></td></tr></table>{%/if%}{%/foreach%}{%* 阳光行动-订票类 *%}{%foreach $tplData.queryInfo.promptNode as $idLen%}{%if $idLen.id == '4'%}<table cellpadding="0" cellspacing="0" border ="0" class="sftip"><tr><td><strong>百度提示您：</strong><span class="sf_con">网上可能存在虚假不良订票类信息，请谨慎辨别，从正规渠道购票。</span></td></tr></table>{%/if%}{%/foreach%}{%* 阳光行动-网购类 *%}{%foreach $tplData.queryInfo.promptNode as $idLen%}{%if $idLen.id == '5'%}<table cellpadding="0" cellspacing="0" border ="0" class="sftip"><tr><td><strong>百度提示您：</strong><span class="sf_con">请选择信誉有保障的网络购物渠道。详见《<a href="http://jingyan.baidu.com/article/1974b289c16df7f4b1f774ef.html?fr=ps" target="_blank">网络购物安全指南</a>》</span></td></tr></table>{%/if%}{%/foreach%}{%* 阳光行动-理财类 *%}{%foreach $tplData.queryInfo.promptNode as $idLen%}{%if $idLen.id == '6'%}<table cellpadding="0" cellspacing="0" border ="0" class="sftip"><tr><td><strong>百度提示您：</strong><span class="sf_con">请选择正规、有信誉的金融理财服务，提高警惕。详见《<a href="http://jingyan.baidu.com/article/93f9803fc9bed7e0e46f55ef.html?fr=ps" target="_blank">网络理财安全指南</a>》</span></td></tr></table>{%/if%}{%/foreach%}{%* 阳光行动-中奖类 *%}{%foreach $tplData.queryInfo.promptNode as $idLen%}{%if $idLen.id == '7'%}<table cellpadding="0" cellspacing="0" border ="0" class="sftip"><tr><td><strong>百度提示您：</strong><span class="sf_con">请勿轻信非官方发布的中奖信息，谨防受骗。详见《<a href="http://jingyan.baidu.com/article/9158e0008e5bf8a2541228ef.html?fr=ps" target="_blank">中奖信息安全指南</a>》</span></td></tr></table>{%/if%}{%/foreach%}{%* 阳光行动-彩票类 *%}{%foreach $tplData.queryInfo.promptNode as $idLen%}{%if $idLen.id == '8'%}<table cellpadding="0" cellspacing="0" border ="0" class="sftip"><tr><td><strong>百度提示您：</strong><span class="sf_con">请选择具有合法资质的彩票。详见《<a href="http://jingyan.baidu.com/article/72ee561a99c30be16138df93.html?fr=ps" target="_blank">彩票安全指南</a>》</span></td></tr></table>{%/if%}{%/foreach%}{%* 阳光行动-医药类 *%}{%foreach $tplData.queryInfo.promptNode as $idLen%}{%if $idLen.id == '9'%}<table cellpadding="0" cellspacing="0" border ="0" class="sftip"><tr><td><strong>百度提示您：</strong><span class="sf_con">网上可能存在虚假不良医药类信息，请谨慎辨别，到正规医院就诊。</span></td></tr></table>{%/if%}{%/foreach%}{%* 微博实名制 *%}{%foreach $tplData.queryInfo.promptNode as $idLen%}{%if $idLen.id == '10'%}<table cellpadding="0" cellspacing="0" border ="0" class="sftip"><tr><td><strong>百度提示您：</strong><span class="sf_con">《北京市微博客发展管理若干规定》，于2011年12月16日公布施行。<a href="http://report.qianlong.com/33378/2011/12/16/2502@7577997.htm" target="_blank">详细&gt;&gt;</a></span></td></tr></table>{%/if%}{%/foreach%}{%foreach $tplData.queryInfo.promptNode as $idLen%}{%if $idLen.id == '101'%}<table cellpadding="0" cellspacing="0" border ="0" class="sftip"><tr><td><strong>百度提示您：</strong><span class="sf_con">一切“保证中奖”字样提示的收费彩票预测均为骗局或虚假宣传，为避免财产损失，请勿轻信。详见《<a href="http://jingyan.baidu.com/article/72ee561a99c30be16138df93.html?fr=ps" target="_blank">彩票安全指南</a>》</span></td></tr></table>{%/if%}{%/foreach%}{%foreach $tplData.queryInfo.promptNode as $idLen%}{%if $idLen.id == '104'%}<table cellpadding="0" cellspacing="0" border ="0" class="sftip"><tr><td><strong>百度提示您：</strong><span class="sf_con">请仅从具有合法彩票销售或代售资质的网点购买彩票。未经官方认证的网上销售渠道，请您谨慎选择。详见《<a href="http://jingyan.baidu.com/article/72ee561a99c30be16138df93.html?fr=ps" target="_blank">彩票安全指南</a>》</span></td></tr></table>{%/if%}{%/foreach%}{%foreach $tplData.queryInfo.promptNode as $idLen%}{%if $idLen.id == '105'%}<table cellpadding="0" cellspacing="0" border ="0" class="sftip"><tr><td><strong>百度提示您：</strong><span class="sf_con">退改签火车票只能到当地指定车站退票窗口，或<a href="http://www.12306.cn/mormhweb/" target="_blank">12306.cn</a>网站办理。其他宣称可以退票的渠道可能涉嫌骗局或虚假信息，请注意谨慎辨别。</span></td></tr></table>{%/if%}{%/foreach%}{%foreach $tplData.queryInfo.promptNode as $idLen%}{%if $idLen.id == '106'%}<table cellpadding="0" cellspacing="0" border ="0" class="sftip"><tr><td><strong>百度与中国航协联合提示：</strong><span class="sf_con">机票退票、改签请联系您购买机票的航空公司或经销商，勿轻信其他渠道。网络购票需谨慎，请参考《<a href="http://jingyan.baidu.com/article/fedf073711d71235ac897796.html?fr=ps" target="_blank">安全购票指南</a>》</span></td></tr></table>{%/if%}{%/foreach%}{%foreach $tplData.queryInfo.promptNode as $idLen%}{%if $idLen.id == '107'%}<table cellpadding="0" cellspacing="0" border ="0" class="sftip"><tr><td><strong>百度提示您：</strong><span class="sf_con">购买火车票，铁道部官方售票渠道仅限<a href="http://www.12306.cn/mormhweb/" target="_blank">12306.cn</a>和电话95105105。通过非官方渠道，例如400电话、个人手机和ATM转帐购票，可能会给您带来财产损失。请务必慎重！</span></td></tr></table>{%/if%}{%/foreach%}{%foreach $tplData.queryInfo.promptNode as $idLen%}{%if $idLen.id == '109'%}<table cellpadding="0" cellspacing="0" border ="0" class="sftip"><tr><td><strong>百度提示您：</strong><span class="sf_con">任何声称可收费删帖的行为均涉嫌违法欺诈，请公众惠知，谨防上当受骗！</span></td></tr></table>{%/if%}{%/foreach%}{%foreach $tplData.queryInfo.promptNode as $idLen%}{%if $idLen.id == '110'%}<table cellpadding="0" cellspacing="0" border ="0" class="sftip"><tr><td><strong>百度提示您：</strong><span class="sf_con">中国石化加油卡网上充值仅限浙江省使用（<a href="http://www.95105888.com/" target="_blank">官网</a>）</a></span></td></tr></table>{%/if%}{%/foreach%}{%foreach $tplData.queryInfo.promptNode as $idLen%}{%if $idLen.id == '111'%}<table cellpadding="0" cellspacing="0" border ="0" class="sftip"><tr><td><strong>百度提示您：</strong><span class="sf_con">SEO是一项非常重要的工作，请参考<a href="http://www.baidu.com/search/aboutseo.html" target="_blank">百度关于SEO的建议</a>。</span></td></tr></table>{%/if%}{%/foreach%}{%foreach $tplData.queryInfo.promptNode as $idLen%}{%if $idLen.id == '112'%}<table cellpadding="0" cellspacing="0" border ="0" class="sftip"><tr><td><strong>国家工商总局和百度提示您：</strong><span class="sf_con">凡以发展会员、加盟商等名义，要求您缴纳费用，层层发展下线并承诺高额回报的都涉嫌传销违法犯罪，请您提高警惕！<a href="http://zxjg.saic.gov.cn/mrktwcms/directsale/workingact/html/2028.htm" target="_blank">详细&gt;&gt;</a></span></td></tr></table>{%/if%}{%/foreach%}{%foreach $tplData.queryInfo.promptNode as $idLen%}{%if $idLen.id == '113'%}<table cellpadding="0" cellspacing="0" border ="0" class="sftip"><tr><td><strong>百度提示您：</strong><span class="sf_con">网上可能存在虚假的充值网站和信息，请谨慎辨别，到正规网站充值。小心存在浏览器跳转、或优惠幅度高于5%的充值页面。</span></td></tr></table>{%/if%}{%/foreach%}{%* 航协提示 *%}{%* foreach $tplData.queryInfo.promptNode as $idLen *%}{%* if $idLen.id == '11' *%}{%* <p class="hit_top"><span class=f14>百度提示您：百度与中国航协联合提示：网络购票需谨慎，请参考《<a href="http://www.baidu.com/search/tickets_guide.html" target="_blank">安全购票指南</a>》</span><br></p>*%}{%* /if *%}{%* /foreach *%}{%/if%}{%/if%}