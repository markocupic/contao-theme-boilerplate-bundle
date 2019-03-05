<?php
/**
 * @copyright  Marko Cupic 2019 <m.cupic@gmx.ch>
 * @author     Marko Cupic
 * @package    Contao Theme Boilerplate Bundle
 * @license    LGPL-3.0+
 * @see	       https://github.com/markocupic/contao-theme-boilerplate-bundle
 *
 */
namespace Markocupic\ContaoThemeBoilerplateBundle\ContaoManager;

use Contao\ManagerPlugin\Bundle\Config\BundleConfig;
use Contao\ManagerPlugin\Bundle\BundlePluginInterface;
use Contao\ManagerPlugin\Bundle\Parser\ParserInterface;

/**
 * Class Plugin
 * @package Markocupic\ContaoThemeBoilerplateBundle\ContaoManager
 */
class Plugin implements BundlePluginInterface
{
    /**
     * {@inheritdoc}
     */
    public function getBundles(ParserInterface $parser)
    {
        return [
            BundleConfig::create('Markocupic\ContaoThemeBoilerplateBundle\MarkocupicContaoThemeBoilerplateBundle')
                ->setLoadAfter(['Contao\CoreBundle\ContaoCoreBundle']),
        ];
    }
}