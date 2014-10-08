<?php

namespace Element\Responsive;

class ArticleBox extends \Element\Emotion\ArticleBox
{
    /**
     * @var array $selector
     */
    protected $selector = array('css' => 'li.product--box.panel');

    public $cssLocator = array(
        'name' => 'div.panel--body > a:nth-of-type(2)',
        'price' => 'div.product--price > div.price--default'
    );
}