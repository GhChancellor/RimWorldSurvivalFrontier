#!/bin/bash
clear

# ================ NAME AND PATHS  =================
GAMENAME="RimWorld"
MODNAME="RimWorldSurvivalFrontier"
SOURCE_PATH_RAW="/home/${USER}/Documenti/Archivio/Programmazione/Modding"
DESTINATION_PATH_RAW="/media/${USER}/writable/Archivio/Programmazione/Modding"

# ================= MOD SOURCE (development files) =================
SOURCE="${SOURCE_PATH_RAW}/${GAMENAME}/${MODNAME}/"
DESTINATION="${DESTINATION_PATH_RAW}/${GAMENAME}/${MODNAME}/"
mkdir -p "${DESTINATION}"

# ================= PARAMETERS =================
EXCLUDES=(--exclude=bin/ --exclude=obj/ --exclude=libs --exclude=.idea/ --exclude=.vscode/)

PARAMETERS=(-av --delete "${EXCLUDES[@]}")
PARAMETERS_VERIFY=(-a -c --dry-run --delete "${EXCLUDES[@]}")

# ================= COPY FILES =================
if rsync "${PARAMETERS[@]}" "${SOURCE}" "${DESTINATION}"; then

    # ================== CHECK FILES IDENTICAL ====================
    DIFF=$(rsync "${PARAMETERS_VERIFY[@]}" "${SOURCE}" "${DESTINATION}" 2>/dev/null)

    if [ -z "$DIFF" ]; then
        echo -e "\e[32m **************************************************************** \e[0m"
        echo -e "\e[32m ****************** Check files are identical. ****************** \e[0m"
        echo -e "\e[32m **************************************************************** \e[0m"
        echo
    else
        echo -e "\e[31m **************************************************************** \e[0m"
        echo -e "\e[31m ****************** Check file failed, ${DIFF} ****************** \e[0m"
        echo -e "\e[31m **************************************************************** \e[0m"
        echo
        exit 1
    fi

    echo -e "\e[32m **************************************************************** \e[0m"
    echo -e "\e[32m ********** ${GAMENAME} > ${MODNAME} > COPY To ONLINE *********** \e[0m"
    echo -e "\e[32m **************************************************************** \e[0m"
else
    echo -e "\e[31m **************************************************************** \e[0m"
    echo -e "\e[31m **************** Copy failed. Exiting script.******************* \e[0m"
    echo -e "\e[31m **************************************************************** \e[0m"
    exit 1    
fi