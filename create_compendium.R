library(rcompendium)

## Ajout d'un fichier DESCRIPTION ----
add_description()

## Ajout d'une licence ----

add_license(license = "GPL-2")

## Ajout de sous-répertoires ----
add_compendium(compendium = c("data", "analyses", "R", "figures", "outputs"))

devtools::document()
