<dl>
    [{assign var="dynvalue" value=$oView->getDynValue()}]
    <dt>
        <input class="form-check-input" id="payment_[{$sPaymentID}]" type="radio" name="paymentid" value="[{$sPaymentID}]"[{if $oView->getCheckedPaymentId() == $paymentmethod->oxpayments__oxid->value}] checked[{/if}]>
        <label class="form-check-label" for="payment_[{$sPaymentID}]">[{$paymentmethod->oxpayments__oxdesc->value}]</label>
    </dt>
    <div class="payment-option[{if $oView->getCheckedPaymentId() == $paymentmethod->oxpayments__oxid->value}] activePayment[{/if}]">
        <div class="mb-3">
            <label class="req form-label col-lg-3">[{oxmultilang ident="BANK"}]</label>
            <div class="col-lg-9">
                <input id="payment_[{$sPaymentID}]_1" class="form-control" type="text" size="20" maxlength="64" name="dynvalue[lsbankname]" value="[{$dynvalue.lsbankname}]" required>
            </div>
        </div>
        <div class="mb-3">
            <label class="req form-label col-lg-3">[{oxmultilang ident="BANK_CODE"}]</label>
            <div class="col-lg-9">
                <input type="text" class="form-control" size="20" maxlength="64" name="dynvalue[lsblz]" value="[{$dynvalue.lsblz}]" required>
            </div>
        </div>
        <div class="mb-3">
            <label class="req form-label col-lg-3">[{oxmultilang ident="BANK_ACCOUNT_NUMBER"}]</label>
            <div class="col-lg-9">
                <input type="text" class="form-control" size="20" maxlength="64" name="dynvalue[lsktonr]" value="[{$dynvalue.lsktonr}]" required>
            </div>
        </div>
        <div class="mb-3">
            <label class="req form-label col-lg-3">[{oxmultilang ident="BANK_ACCOUNT_HOLDER"}]</label>
            <div class="col-lg-9">
                <input type="text" class="form-control" size="20" maxlength="64" name="dynvalue[lsktoinhaber]" value="[{if $dynvalue.lsktoinhaber}][{$dynvalue.lsktoinhaber}][{else}][{$oxcmp_user->oxuser__oxfname->value}] [{$oxcmp_user->oxuser__oxlname->value}][{/if}]" required>
            </div>
        </div>

        [{block name="checkout_payment_longdesc"}]
            [{if $paymentmethod->oxpayments__oxlongdesc->value}]
                <div class="row">
                    <div class="col-12 col-lg-9 offset-lg-3">
                        <div class="alert alert-info desc">
                            [{$paymentmethod->oxpayments__oxlongdesc->getRawValue()}]
                        </div>
                    </div>
                </div>
            [{/if}]
        [{/block}]
    </div>
</dl>
