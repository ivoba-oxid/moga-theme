[{if $oView->getWishList()}]
    <form name="wishlist_wishlist_status" action="[{$oViewConf->getSelfActionLink()}]" method="post" class="max-600">
        <div class="wishlistPublish">
                [{$oViewConf->getHiddenSid()}]
                <input type="hidden" name="fnc" value="togglepublic">
                <input type="hidden" name="cl" value="account_wishlist">

            <div class="mb-3">
                <label class="form-label col-lg-3" for="wishlist_blpublic">[{oxmultilang ident="MESSAGE_MAKE_GIFT_REGISTRY_PUBLISH"}]</label>
                <div class="col-lg-9">
                    <select name="blpublic" id="wishlist_blpublic" class="form-select">
                        <option value="0">[{oxmultilang ident="NO"}]</option>
                        [{assign var="wishlist" value=$oView->getWishList()}]
                        <option value="1"[{if $wishlist->oxuserbaskets__oxpublic->value}] selected="selected"[{/if}]>[{oxmultilang ident="YES"}]</option>
                    </select>
                </div>
            </div>
            <div class="mb-3">
                <div class="offset-lg-3 col-lg-9 publish-list">
                        <button class="btn btn-primary" type="submit">[{oxmultilang ident="SAVE"}]</button>
                        <a href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_wishlist" params="blshowsuggest=1"}]" class="btn btn-outline-primary">
                            [{oxmultilang ident="MESSAGE_SEND_GIFT_REGISTRY"}]
                        </a>
                </div>
            </div>
        </div>
    </form>
[{/if}]
