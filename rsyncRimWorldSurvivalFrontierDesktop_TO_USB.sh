#! /bin/bash

GAMENAME="RimWorld"
PROJECTNAME="RimWorldSurvivalFrontier"

PARAMETERS=(-av -c --delete --exclude=bin/ --exclude=obj/ --exclude=libs --exclude=.idea/ --exclude=.vscode/)
BASE="Archivio/Programmazione/Modding/${GAMENAME}/${PROJECTNAME}/"

SOURCE="/home/lele/Documenti/${BASE}"
DESTINATION="/media/lele/54b9c956-8863-46f3-a04d-eb2e7a8dc261/${BASE}"

mkdir -p "${DESTINATION}"

rsync "${PARAMETERS[@]}" "${SOURCE}" "${DESTINATION}" && {
    echo -e "\e[32m **************************************************************** \e[0m"
    echo -e "\e[32m ********** ${GAMENAME} > ${PROJECTNAME} > Desktop To USB ******** \e[0m"
    echo -e "\e[32m **************************************************************** \e[0m"
} || {
    echo -e "\e[31m *************************************************************************************** \e[0m"
    echo -e "\e[31m ***************************** Copy failed. Exiting script.***************************** \e[0m"
    echo -e "\e[31m *************************************************************************************** \e[0m"
}

