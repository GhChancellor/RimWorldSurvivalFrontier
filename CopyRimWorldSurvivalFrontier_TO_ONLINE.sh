#! /bin/bash

GAMENAME="RimWorld"
PROJECTNAME="RimWorldSurvivalFrontier"

PARAMETERS=(-av -c --delete --exclude=bin/ --exclude=obj/ --exclude=libs --exclude=.git/ --exclude=.idea/ --exclude=.vscode/ )
BASE="Archivio/Programmazione/Modding/${GAMENAME}/${PROJECTNAME}/"

SOURCE="/home/lele/Documenti/${BASE}"
DESTINATION="/home/lele/Documenti/Archivio/Programmazione/Modding/${GAMENAME}/Online/${PROJECTNAME}"

mkdir -p "${DESTINATION}"

rsync "${PARAMETERS[@]}" "${SOURCE}" "${DESTINATION}" && {
    echo -e "\e[32m **************************************************************** \e[0m"
    echo -e "\e[32m ********** ${GAMENAME} > ${PROJECTNAME} > COPY To ONLINE ******** \e[0m"
    echo -e "\e[32m **************************************************************** \e[0m"
} || {
    echo -e "\e[31m *************************************************************************************** \e[0m"
    echo -e "\e[31m ***************************** Copy failed. Exiting script.***************************** \e[0m"
    echo -e "\e[31m *************************************************************************************** \e[0m"
}



