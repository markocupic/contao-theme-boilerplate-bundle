<?php
/**
 * @copyright  Marko Cupic 2019 <m.cupic@gmx.ch>
 * @author     Marko Cupic
 * @package    Contao Theme Boilerplate Bundle
 * @license    LGPL-3.0+
 * @see	       https://github.com/markocupic/contao-theme-boilerplate-bundle
 *
 */

/**
 * Hooks
 */
// Purge script cache in dev mode
$GLOBALS['TL_HOOKS']['getPageLayout'][] = array('Markocupic\ContaoThemeBoilerplateBundle\Contao\Hooks\GetPageLayout', 'purgeScriptCache');