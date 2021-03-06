[{*oxscript include="js/libs/jqBootstrapValidation.min.js" priority=10}]
[{oxscript add="$('input,select,textarea').not('[type=submit]').jqBootstrapValidation();"*}]

[{if $oView->getAccountDeletionStatus() == true}]
    [{assign var="statusMessage" value="DD_DELETE_MY_ACCOUNT_SUCCESS"|oxmultilangassign}]
    [{include file="message/success.tpl" statusMessage=$statusMessage}]
[{/if}]

<div class="card-group mb-5">
    <div class="card">
        <div class="card-header">[{oxmultilang ident="LOGIN"}]</div>
        <div class="card-body">
            <form name="login" action="[{$oViewConf->getSslSelfLink()}]" method="post" novalidate>
                [{$oViewConf->getHiddenSid()}]
                [{$oViewConf->getNavFormParams()}]
                <input type="hidden" name="fnc" value="login_noredirect">
                <input type="hidden" name="cl" value="[{$oViewConf->getActiveClassName()}]">
                <input type="hidden" name="tpl" value="[{$oViewConf->getActTplName()}]">
                <input type="hidden" name="oxloadid" value="[{$oViewConf->getActContentLoadId()}]">
                [{if $oView->getArticleId()}]
                    <input type="hidden" name="aid" value="[{$oView->getArticleId()}]">
                [{/if}]
                [{if $oView->getProduct()}]
                    [{assign var="product" value=$oView->getProduct()}]
                    <input type="hidden" name="anid" value="[{$product->oxarticles__oxnid->value}]">
                [{/if}]

                <p>[{oxmultilang ident="LOGIN_ALREADY_CUSTOMER"}]</p>

                <div class="mb-3 form-floating[{if $aErrors}] oxInValid[{/if}]">
                    <input id="loginUser" class="form-control" type="text" name="lgn_usr" role="loginUser" required placeholder=" ">
                    <label class="req">[{oxmultilang ident="EMAIL"}]</label>
                </div>
                <div class="mb-3 form-floating[{if $aErrors}] oxInValid[{/if}]">
                    <input id="loginPwd" class="form-control" type="password" name="lgn_pwd" role="loginPwd" required placeholder=" ">
                    <label class="req">[{oxmultilang ident="PASSWORD"}]</label>
                    <a id="forgotPasswordLink" href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=forgotpwd"}]" class="btn btn-link px-0">[{oxmultilang ident="FORGOT_PASSWORD"}]</a>
                </div>
                [{if $oView->showRememberMe()}]
                    <div class="form-check mb-3">
                        <input type="checkbox" class="form-check-input" id="lgn_cook" name="lgn_cook" value="1">
                        <label for="lgn_cook" class="form-check-label">
                             [{oxmultilang ident="KEEP_LOGGED_IN"}]
                        </label>
                    </div>
                [{/if}]

                <div class="mb-3">
                    <button id="loginButton" type="submit" class="btn btn-primary">[{oxmultilang ident="LOGIN"}]</button>
                </div>
            </form>
        </div>
    </div>
    <div class="card">
        <div class="card-header">[{oxmultilang ident="OPEN_ACCOUNT"}]</div>
        <div class="card-body">
            <p>[{oxmultilang ident="DD_LOGIN_ACCOUNT_PANEL_CREATE_BODY"}]</p>
            <a id="openAccountLink" href="[{oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=register"}]" class="btn btn-primary" >[{oxmultilang ident="OPEN_ACCOUNT"}]</a><br>
        </div>
    </div>
</div>
