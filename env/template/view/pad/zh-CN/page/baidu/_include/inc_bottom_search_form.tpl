<form name="f2" action="{%$searchAction%}"><input type="hidden" name="bs" value="{%$query|vui_escape:'html'%}">{%if $urlPara.z_type == 3%}<input type="hidden" name="z" value="{%$urlPara.z|vui_escape:'html'%}">{%/if%}{%if $urlPara.ct != 0%}<input type="hidden" name="ct" value="{%$urlPara.ct|vui_escape:'html'%}">{%/if%}{%if $urlPara.tn != 'baidu'%}<input type="hidden" name="tn" value="{%$urlPara.tn%}">{%/if%}{%if $urlPara.rn != 10%}<input type="hidden" name="rn" value="{%$urlPara.rn|vui_escape:'html'%}">{%/if%}{%if $urlPara.lm != 0%}<input type="hidden" name="lm" value="{%$urlPara.lm|vui_escape:'html'%}">{%/if%}{%if $urlPara.ch != 0%}<input type="hidden" name="ch" value="{%$urlPara.ch|vui_escape:'html'%}">{%/if%}{%if strlen($urlPara.si) > 0%}<input type="hidden" name="si" value="{%$urlPara.si|vui_escape:'html'%}">{%/if%}{%if $urlPara.ie%}<input type="hidden" name="ie" value="{%$urlPara.ie%}">{%/if%}{%if $urlPara.dsp%}<input type="hidden" name="dsp" value="{%$urlPara.dsp|vui_escape:'html'%}">{%/if%}<input type="hidden" name="f" value="8"><input type="hidden" name="rsv_bp" value="2">{%if $urlPara.rsv_spt%}{%if $urlPara.rsv_spt == '1' || $urlPara.rsv_spt == '2' || $urlPara.rsv_spt == '3'%}<input type="hidden" name="rsv_spt" value="{%$urlPara.rsv_spt%}">{%/if%}{%/if%}<div class="bds-ip"><input id="kw2" type="search" name="wd" autocorrect="off" data-widget="quickdelete" data-quickdelete-offsetx="9" maxlength="100" autocomplete="off" value="{%$query|vui_escape:'html'%}"></div><div class="bds-se"><input type="submit" id="su2" value="{%$lable_submit_value%}"></div></form>