#!/bin/bash
clear

GAMENAME="RimWorld"
MODNAME="RimWorldSurvivalFrontier"
SOURCE_PATH_RAW="/home/${USER}/Documenti/Archivio/Store/Steam/steamapps/common/${GAMENAME}/Mods"
# DESTINATION_PATH_RAW=""

# ================= MOD SOURCE (Development files) =================
SOURCE="${SOURCE_PATH_RAW}/${MODNAME}/"

rm -rf "${SOURCE}"

echo -e "\e[32m **************************************************************** \e[0m"
echo -e "\e[32m ******************** ${SOURCE} removed ************************* \e[0m"
echo -e "\e[32m **************************************************************** \e[0m"