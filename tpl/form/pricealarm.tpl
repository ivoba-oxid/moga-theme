[{*oxscript include="js/libs/jqBootstrapValidation.min.js" priority=10}]
[{oxscript add="$('input,select,textarea').not('[type=submit]').jqBootstrapValidation();"*}]

[{assign var="currency" value=$oView->getActCurrency()}]
<p class="alert alert-info">[{oxmultilang ident="MESSAGE_PRICE_ALARM_PRICE_CHANGE"}]</p>
<form class="max-600" name="pricealarm" action="[{$oViewConf->getSelfActionLink()}]" method="post" novalidate>
    <div>
        [{$oViewConf->getHiddenSid()}]
        [{$oViewConf->getNavFormParams()}]
        <input type="hidden" name="cl" value="[{$oViewConf->getTopActiveClassName()}]">
        [{if $oDetailsProduct}]
            <input type="hidden" name="anid" value="[{$oDetailsProduct->oxarticles__oxid->value}]">
        [{/if}]
        <input type="hidden" name="fnc" value="addme">
    </div>
    <div class="mb-3 form-floating">
        <input class="form-control" id="pa[price]" type="text" placeholder=" " name="pa[price]" value="[{oxhasrights ident="SHOWARTICLEPRICE"}][{if $product}][{$product->getFPrice()}][{/if}][{/oxhasrights}]" maxlength="32" required>
        <label for="pa[price]" class="req form-label">[{oxmultilang ident="YOUR_PRICE"}] ([{$currency->sign}]):</label>
    </div>
    <div class="mb-3 form-floating">
        <input class="form-control" id="pa[email]" type="email" name="pa[email]" placeholder=" " value="[{if $oxcmp_user}][{$oxcmp_user->oxuser__oxusername->value}][{/if}]" maxlength="128" required>
        <label for="pa[email]" class="req form-label">[{oxmultilang ident="EMAIL"}]:</label>
    </div>

    [{block name="captcha_form"}][{/block}]

    <div class="mb-3">
        <button class="submitButton btn btn-primary" type="submit">[{oxmultilang ident="SEND"}]</button>
    </div>
</form>
