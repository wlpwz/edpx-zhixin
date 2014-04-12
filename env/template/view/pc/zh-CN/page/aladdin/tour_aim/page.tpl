{%extends 'c_base.tpl'%} {%block name='data_modifier'%}{%$extData.feData.hasTitleGap=false%}{%/block%}{%block name='content'%}<style>.op_tour_aim_plan_imgList img{height:{%fe_fn_c_get_grid_height rate=3/4%}px}</style> {%if $tplData.tipContent!=""%}<div><span>{%$tplData.tipContent|limitlen:160|highlight:0%}</span></div>{%/if%} <div class="c-gap-top-small"> <span><b>{%$tplData.hotPlace[0]['tip']|escape:'html'%}</b></span> <span><a href="{%$tplData.hotPlace[0]['hotUrl']|escape:'html'%}" target="_blank">（<label>{%$tplData.hotPlace[0]['hotNum']|escape:'html'%}</label>）</a></span> </div> <div class="c-row c-gap-top-small"> {%foreach $tplData.picInfo as $item%} {%if $item@index == $tplData.picInfo|count%}{%break%}{%/if%} <div class="c-span6{%if $item@index == $tplData.picInfo|count-1%} c-span-last{%/if%} op_tour_aim_plan_imgList"> <a href="{%$item.picTitleUrl|escape:'html'%}" target="_blank"><img class="c-img c-img6" src="{%$item.picUrl|escape:'html'%}" /></a> <a class="op_tour_aim_plan_pictext" href="{%$item.picTitleUrl|escape:'html'%}" target="_blank">{%$item.picTitle|escape:'html'%}</a> </div> {%/foreach%} </div> <div class="c-gap-top-small"> <span><b>{%$tplData.tourGuide[0]['tip']|escape:'html'%}</b></span> <span><a href="{%$tplData.tourGuide[0]['guideUrl']|escape:'html'%}" target="_blank">（<label class="op_tour_aim_baseline">{%$tplData.tourGuide[0]['guideNum']|escape:'html'%}</label>）</a></span> <ul> {%foreach $tplData.guideContent as $item%} {%if $item@index == $tplData.guideContent|count%}{%break%}{%/if%} <li><a href="{%$item.url|escape:'html'%}" target="_blank">{%$item.content|escape:'html'%}</a></li> {%/foreach%} </ul> </div> {%if $tplData.tourPlan!=""%} <div class="c-gap-top-small c-clearfix"> <span class="op_tour_aim_plan_wz c-gap-top-small"><b>{%$tplData.tourPlan|escape:'html'%}：</b></span> <span class="op_tour_aim_plan_main"> <span class="op_tour_aim_plan_train_icon"></span> <span><a class="op_tour_aim_nobaseline op_tour_aim_plan_link" href="{%$tplData.trainQuery[0]['url']|escape:'html'%}" target="_blank">{%$tplData.trainQuery[0]['content']|escape:'html'%}</a></span> <span class="op_tour_aim_plan_splitter">&nbsp;</span> <span class="op_tour_aim_plan_plane_icon"></span> <span><a class="op_tour_aim_nobaseline op_tour_aim_plan_link" href="{%$tplData.planeQuery[0]['url']|escape:'html'%}" target="_blank">{%$tplData.planeQuery[0]['content']|escape:'html'%}</a></span> <span class="op_tour_aim_plan_splitter">&nbsp;</span> <span class="op_tour_aim_plan_house_icon"></span> <span><a class="op_tour_aim_nobaseline op_tour_aim_plan_link" href="{%$tplData.houseQuery[0]['url']|escape:'html'%}" target="_blank">{%$tplData.houseQuery[0]['content']|escape:'html'%}</a></span> </span> </div> {%/if%} {%if $tplData.tourTip[0]['content']!=""%} <div class="op_tour_aim_tip"> <span class="op_tour_aim_tip_content">{%$tplData.tourTip[0]['content']|escape:'html'%}</span> <span><a href="{%$tplData.tourTip[0]['morelinkUrl']|escape:'html'%}" target="_blank">{%$tplData.tourTip[0]['morelinkTip']|escape:'html'%}</a></span> </div> {%/if%}{%/block%}