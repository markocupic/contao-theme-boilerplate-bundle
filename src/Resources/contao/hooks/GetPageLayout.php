<?php
/**
 * @copyright  Marko Cupic 2019 <m.cupic@gmx.ch>
 * @author     Marko Cupic
 * @package    Contao Theme Boilerplate Bundle
 * @license    LGPL-3.0+
 * @see	       https://github.com/markocupic/contao-theme-boilerplate-bundle
 *
 */

namespace Markocupic\ContaoThemeBoilerplateBundle\Contao\Hooks;


use Contao\Automator;
use Contao\FilesModel;
use Contao\StringUtil;
use Contao\System;

/**
 * Class GetPageLayout
 * @package Markocupic\ContaoThemeBoilerplateBundle\Contao\Hooks
 */
class GetPageLayout
{

    /**
     * @param $objPage
     * @param $objLayout
     * @param $objPty
     */
    public function purgeScriptCache($objPage, $objLayout, $objPty)
    {

        // Purge script cache in dev mode
        $kernel = System::getContainer()->get('kernel');
        if ($kernel->isDebug())
        {
            $objAutomator = new Automator();
            $objAutomator->purgeScriptCache();
            $rootDir = System::getContainer()->getParameter('kernel.project_dir');
            if ($objLayout->external !== '')
            {
                $arrExternal = StringUtil::deserialize($objLayout->external);
                if (!empty($arrExternal) && is_array($arrExternal))
                {
                    $objFile = FilesModel::findMultipleByUuids($arrExternal);
                    while ($objFile->next())
                    {
                        if (is_file($rootDir . '/' . $objFile->path))
                        {
                            touch($rootDir . '/' . $objFile->path);
                        }
                    }
                }
            }
        }
    }
}