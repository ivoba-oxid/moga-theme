[{capture append="oxidBlock_pageBody"}]
    [{if $oView->isEnabledPrivateSales()}]
        [{oxid_include_widget cl="oxwCookieNote" _parent=$oView->getClassName() nocookie=1}]
    [{/if}]
[{/capture}]

[{capture append="oxidBlock_content"}]
    <div class="container-xxl py-5">
        [{if $oView->isActive('PsLogin')}]
            [{include file="message/errors.tpl"}]
        [{/if}]

        <h3>[{oxmultilang ident="OPEN_ACCOUNT"}]</h3>
        [{include file="form/register.tpl"}]
    </div>
[{/capture}]

[{if $oView->isActive('PsLogin')}]
    [{include file="layout/popup.tpl"}]
[{else}]
    [{include file="layout/page.tpl"}]
[{/if}]
