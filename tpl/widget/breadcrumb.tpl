[{block name="dd_widget_breadcrumb"}]
    [{strip}]
        [{block name="dd_widget_breadcrumb_list_inner"}]
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb mb-3 d-none d-md-flex">
                [{block name="dd_widget_breadcrumb_list"}]
                    <li class="breadcrumb-item">
                        <a href="[{$oViewConf->getHomeLink()}]" class="breadcrumb-link" title="[{oxmultilang ident="HOME"}]">
                            <i class="moga-house-door"></i>
                        </a>
                    </li>
                    [{foreach from=$oView->getBreadCrumb() item="sCrum" name="breadcrumb"}]
                        <li class="breadcrumb-item[{if $smarty.foreach.breadcrumb.last && $oView->getClassName() != "details"}] active[{/if}]">
                            [{if $smarty.foreach.breadcrumb.last && $oView->getClassName() != "details"}]
                                [{$sCrum.title}]
                            [{else}]
                                <a href="[{if $sCrum.link}][{$sCrum.link}][{else}]#[{/if}]" class="breadcrumb-link" title="[{$sCrum.title|escape:'html'}]">
                                    [{$sCrum.title}]
                                </a>
                            [{/if}]
                        </li>
                    [{/foreach}]
                    [{if $oView->getClassName() == "details"}]
                    <li class="breadcrumb-item active">
                        [{$oDetailsProduct->oxarticles__oxtitle->value}]
                    </li>
                    [{/if}]
                [{/block}]
            </ol>
        </nav>
        [{/block}]
    [{/strip}]
[{/block}]
