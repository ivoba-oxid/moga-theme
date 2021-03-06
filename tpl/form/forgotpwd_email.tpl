[{*oxscript include="js/libs/jqBootstrapValidation.min.js" priority=10}]
[{oxscript add="$('input,select,textarea').not('[type=submit]').jqBootstrapValidation();"*}]

<p>
    [{oxmultilang ident="HAVE_YOU_FORGOTTEN_PASSWORD"}]<br>
    [{oxmultilang ident="HERE_YOU_SET_UP_NEW_PASSWORD"}]
</p>

<form action="[{$oViewConf->getSelfActionLink()}]" name="forgotpwd" method="post" novalidate>
    <div class="row">
        <div class="col-md-6">
            [{$oViewConf->getHiddenSid()}]
            [{$oViewConf->getNavFormParams()}]
            <input type="hidden" name="fnc" value="forgotpassword">
            <input type="hidden" name="cl" value="forgotpwd">
            <input type="hidden" name="actcontrol" value="forgotpwd">

            <div class="mb-3 form-floating">
                <input id="forgotPasswordUserLoginName[{$idPrefix}]" placeholder=" " type="email" name="lgn_usr"
                value="[{$oView->getActiveUsername()}]" class="form-control" required>
                <label for="forgotPasswordUserLoginName[{$idPrefix}]" class="req">[{oxmultilang ident="YOUR_EMAIL_ADDRESS"}]</label>
            </div>
            <div class="mb-3">
                <button class="btn btn-primary submitButton" type="submit">[{oxmultilang ident="REQUEST_PASSWORD"}]</button>
            </div>
        </div>
    </div>
</form>

[{oxmultilang ident="REQUEST_PASSWORD_AFTERCLICK"}]<br><br>
[{oxifcontent ident="oxforgotpwd" object="oCont"}]
    [{$oCont->oxcontents__oxcontent->value}]
    [{/oxifcontent}]
