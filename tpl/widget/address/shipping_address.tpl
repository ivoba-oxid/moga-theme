[{if $delivadr}]
    <div class="mb-2">
        [{if $delivadr->oxaddress__oxcompany->value}] [{$delivadr->oxaddress__oxcompany->value}]<br>[{/if}]
        [{if $delivadr->oxaddress__oxaddinfo->value}] [{$delivadr->oxaddress__oxaddinfo->value}]<br>[{/if}]
        [{if $delivadr->oxaddress__oxsal->value}]
            [{$delivadr->oxaddress__oxsal->value|oxmultilangsal}]&nbsp;
        [{/if}]
        [{if $delivadr->oxaddress__oxfname->value || $delivadr->oxaddress__oxlname->value}]
            [{$delivadr->oxaddress__oxfname->value}]&nbsp;[{$delivadr->oxaddress__oxlname->value}]<br>
        [{/if}]
        [{if $delivadr->oxaddress__oxstreet->value || $delivadr->oxaddress__oxstreetnr->value}][{$delivadr->oxaddress__oxstreet->value}]&nbsp;[{$delivadr->oxaddress__oxstreetnr->value}]<br>[{/if}]
        [{if $delivadr->oxaddress__oxstateid->value}][{$delivadr->oxaddress__oxstateid->value}] [{/if}]
        [{if $delivadr->oxaddress__oxzip->value || $delivadr->oxaddress__oxcity->value}][{$delivadr->oxaddress__oxzip->value}]&nbsp;[{$delivadr->oxaddress__oxcity->value}]<br>[{/if}]
        [{if $delivadr->oxaddress__oxcountry->value}][{$delivadr->oxaddress__oxcountry->value}]<br>[{/if}]
        [{if $delivadr->oxaddress__oxfon->value}][{oxmultilang ident="PHONE"}] [{$delivadr->oxaddress__oxfon->value}]<br>[{/if}]
        [{if $delivadr->oxaddress__oxfax->value}][{oxmultilang ident="FAX"}] [{$delivadr->oxaddress__oxfax->value}]<br>[{/if}]
    </div>
[{/if}]
