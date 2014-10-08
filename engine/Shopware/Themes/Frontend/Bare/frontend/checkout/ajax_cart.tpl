{block name='frontend_checkout_ajax_cart'}
    <div class="ajax--cart">
        {block name='frontend_checkout_ajax_cart_buttons_offcanvas'}
            <div class="buttons--off-canvas">
                {block name='frontend_checkout_ajax_cart_buttons_offcanvas_inner'}
                    <a href="#close-categories-menu" class="close--off-canvas">
                        <i class="icon--arrow-left"></i>
                        {s name="AjaxCartContinueShopping"}Continue shopping{/s}
                    </a>
                {/block}
            </div>
        {/block}

        {block name='frontend_checkout_ajax_cart_item_container'}
            <div class="item--container">
                {block name='frontend_checkout_ajax_cart_item_container_inner'}
                    {if $sBasket.content}
                        {foreach $sBasket.content as $sBasketItem}
                            {block name='frontend_checkout_ajax_cart_row'}
                                {include file="frontend/checkout/ajax_cart_item.tpl" basketItem=$sBasketItem}
                            {/block}
                        {/foreach}
                    {else}
                        {block name='frontend_checkout_ajax_cart_empty'}
                            <div class="cart--item is--empty">
                                {block name='frontend_checkout_ajax_cart_empty_inner'}
                                    <span class="cart--empty-text">{s name='AjaxCartInfoEmpty'}Your shopping cart is empty{/s}</span>
                                {/block}
                            </div>
                        {/block}
                    {/if}
                {/block}
            </div>
        {/block}

        {block name='frontend_checkout_ajax_cart_prices_container'}
            {if $sBasket.content}
                <div class="prices--container">
                    {block name='frontend_checkout_ajax_cart_prices_container_inner'}
                        <div class="prices--articles">
                            <span class="prices--articles-text">{s name="AjaxCartTotalAmount"}Total amount{/s}</span>
                            <span class="prices--articles-amount">{$sBasket.Amount|currency}</span>
                        </div>
                    {/block}
                </div>
            {/if}
        {/block}

        {* Basket link *}
        {block name='frontend_checkout_ajax_cart_button_container'}
            <div class="button--container">
                {block name='frontend_checkout_ajax_cart_button_container_inner'}
                    {block name='frontend_checkout_ajax_cart_open_checkout'}
                        <a href="{url controller='checkout' action='confirm'}" class="btn is--primary button--checkout is--icon-right" title="{"{s name='AjaxCartLinkConfirm'}{/s}"|escape:"html"}">
                            <i class="icon--arrow-right"></i>
                            {s name='AjaxCartLinkConfirm'}Proceed to checkout{/s}
                        </a>
                    {/block}
                    {block name='frontend_checkout_ajax_cart_open_basket'}
                        <a href="{url controller='checkout' action='cart'}" class="btn button--open-basket is--icon-right" title="{"{s name='AjaxCartLinkBasket'}{/s}"|escape:"html"}">
                            <i class="icon--arrow-right"></i>
                            {s name='AjaxCartLinkBasket'}View shopping cart{/s}
                        </a>
                    {/block}
                {/block}
            </div>
        {/block}
    </div>
{/block}