{extends file='frontend/index/index.tpl'}

{* Main content *}
{block name='frontend_index_content'}
	<div class="newsletter-detail--content content block">
		<div class="newsletter-detail--container panel has--border">
			{block name='frontend_newsletter_detail'}
				{if $sContentItem}

					{* Newsletter detail title *}
					{block name='frontend_newsletter_listing_title'}
						<h1 class="newsletter-detail--headline panel--title is--underline">{if $sContentItem.date}{$sContentItem.date|date:"DATE_SHORT"} - {/if}{$sContentItem.description}</h1>
					{/block}

					{* Newsletter detail iframe *}
					{block name='frontend_newsletter_listing_iframe'}
						<div class="newsletter-detail--iframe panel--body is--wide">
							<iframe src="{$sContentItem.link}"></iframe>
						</div>
					{/block}
				{else}

					{* Error message *}
					{block name='frontend_newsletter_listing_error_message'}
						{include file="frontend/_includes/messages.tpl" type="warning" content="{s name='NewsletterDetailInfoEmpty'}{/s}"}
					{/block}
				{/if}

			{/block}
		</div>

		{* Newsletter detail buttons *}
		{block name="frontend_newsletter_detail_buttons"}
			<div class="newsletter-detail--buttons block">

				{block name="frontend_newsletter_detail_buttons_window"}
					<a href="{$sContentItem.link}" class="newsletter-detail--window btn btn--primary right" target="_blank">{s name='NewsletterDetailLinkNewWindow'}{/s}<i class="icon--arrow-right is--small"></i></a>
				{/block}

				{block name="frontend_newsletter_detail_buttons_backlink"}
					<a href="{$sBackLink}" class="newsletter-detail--backlink btn btn--secondary left"><i class="icon--arrow-left is--small"></i>{s name='NewsletterDetailLinkBack'}{/s}</a>
				{/block}
			</div>
		{/block}

	</div>
{/block}