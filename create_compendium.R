library(rcompendium)

## Ajout d'un fichier DESCRIPTION ----
add_description()

## Ajout d'une licence ----

add_license(license = "GPL-2")

## Ajout de sous-répertoires ----
add_compendium(compendium = c("data", "analyses", "R", "figures", "outputs"))

devtools::document()

## Ajout de dépendances ----
add_dependencies(compendium = ".")

## Ajout d'un makefile ----
add_makefile()

## Installation des packages manquants ----
remotes::install_deps(upgrade = "never")

## Chargement des packages et fonctions R ----
devtools::load_all()
