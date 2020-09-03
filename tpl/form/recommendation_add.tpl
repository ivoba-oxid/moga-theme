[{if !$oxcmp_user->oxuser__oxusername->value}]
  [{include file="page/account/login.tpl"}]
[{else}]
    [{assign var="product" value=$oView->getProduct()}]
    [{if $oxcmp_user->getRecommListsCount()}]
        <form action="[{$oViewConf->getSelfActionLink()}]" method="post">
            <div>
                [{$oViewConf->getHiddenSid()}]
                [{$oViewConf->getNavFormParams()}]
                <input type="hidden" name="fnc" value="addToRecomm">
                <input type="hidden" name="cl" value="details">
                <input type="hidden" name="anid" value="[{$product->oxarticles__oxid->value}]">
            </div>
            <ul class="form listmania-add list-unstyled">
                <li class="listmania-select-list">
                    <label>[{oxmultilang ident="SELECT_LISTMANIA_LIST"}]:</label>
                    <select name="recomm" class="form-select">
                        [{foreach from=$oView->getRecommLists() item=oList}]
                            <option value="[{$oList->oxrecommlists__oxid->value}]">[{$oList->oxrecommlists__oxtitle->value}]</option>
                        [{/foreach}]
                    </select>
                </li>
                <li class="listmania-desc-add">
                    <label>Description:</label>
                    <textarea cols="102" rows="7" name="recomm_txt" class="areabox"></textarea><br>
                </li>
                <li class="formSubmit listmania-submit">
                    <button class="btn btn-primary submitButton largeButton" type="submit">[{oxmultilang ident="ADD_TO_LISTMANIA_LIST"}]</button>
                </li>
            </ul>
      </form>
    [{else}]
        [{oxmultilang ident="NO_LISTMANIA_LIST"}] <a href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_recommlist"}]">[{oxmultilang ident="CLICK_HERE"}]</a>
    [{/if}]
[{/if}]
