#!/bin/bash
clear

# ================ NAME AND PATHS  =================
GAMENAME="RimWorld"
MODNAME="RimWorldSurvivalFrontier"
SOURCE_PATH_RAW="/home/${USER}/Documenti/Archivio/Programmazione/Modding"
# DESTINATION_PATH_RAW=""

# ================= STEAMID =================
STEAMID="294100"

# ================= MOD SOURCE (Development files) =================
SOURCE="${SOURCE_PATH_RAW}/${GAMENAME}/${MODNAME}/${MODNAME}/"
CSPROJFILE="${SOURCE}${MODNAME}.csproj"

echo
echo -e "\e[32m ***************************************************************** \e[0m"
echo -e "\e[32m **************** Removing bin and obj folders ******************* \e[0m"

rm -rf "${SOURCE:?}/bin" "${SOURCE:?}/obj"

echo -e "\e[32m ***************** Bin and obj folders removed ******************* \e[0m"
echo -e "\e[32m ************************ clean project ************************** \e[0m"
echo -e "\e[32m ***************************************************************** \e[0m"
echo

dotnet clean "${CSPROJFILE}"

if dotnet build "${CSPROJFILE}"; then
    echo -e "\e[32m **************************************************************** \e[0m"
    echo -e "\e[32m **************** ${MODNAME} > Build succeeded! ***************** \e[0m"
    echo -e "\e[32m **************** ${GAMENAME} is ready to play! ****************** \e[0m"
    echo -e "\e[32m **************************************************************** \e[0m"
    steam "steam://rungameid/${STEAMID}"
else
    echo -e "\e[31m **************************************************************** \e[0m"
    echo -e "\e[31m ********* ${MODNAME} > Build failed. Exiting script.************ \e[0m"
    echo -e "\e[31m **************************************************************** \e[0m"
fi