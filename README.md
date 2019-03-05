# Contao Theme Boilerplate Bundle !!!Beta und privat!!!

## Inhalt
Das bundle enthält eine einfache Basis, um mit dem Theming eines Contao Themes zu starten. Es installiert zusätzlich folgende Erweiterungen:

"contao/core-bundle": "^4.7, <5",

"contao-bootstrap/bundle": "^2.1",

"contao-bootstrap/core": "^2.0",

"markocupic/contao-news-infinite-scroll-bundle": "^1.0",

"markocupic/gallery-creator-bundle": "^1.2",

"markocupic/rotate_image": "^1.0",

"markocupic/contao-db-backup": "^1.2"


## Installation
Nachdem du das Package über composer installiert hast, kopiere den Inhalt der beiden Verzeichnisse

vendor/markocupic/contao-theme-boilerplate-bundle/src/Resources/contao/files nach files/

  und

vendor/markocupic/contao-theme-boilerplate-bundle/src/Resources/contao/templates nach templates/


### Cache neu aufbauen nicht vergessen
Nachdem du die beiden Verzeichnisse kopiert hast, vergiss nicht den internen Cache zu leeren.

vendor/bin/contao-console cache:clear --env=dev

vendor/bin/contao-console cache:clear --env=prod


![Theme Vorschau](src/Resources/contao/files/yellow_theme/yellow-theme.png)
