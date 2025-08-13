#!/bin/bash

echo
MODNAME="RimWorldSurvivalFrontier"

PROJECTPATH="/home/${USER}/Documenti/Archivio/Programmazione/Modding/RimWorld/${MODNAME}/${MODNAME}/"

CSPROJFILE="${PROJECTPATH}${MODNAME}.csproj"
STEAMID="294100"

echo -e "\e[32m ----------------------------- Removing bin and obj folders... ----------------------------- \e[0m"
rm -rf bin obj
echo -e "\e[32m Bin and obj folders removed. \e[0m"

echo -e "\e[32m ----------------------------- clean project... ----------------------------- \e[0m"
echo
dotnet clean "${CSPROJFILE}"

echo -e "\e[32m Building project... \e[0m"

dotnet build "${CSPROJFILE}" && (
    echo -e "\e[32m ----------------------------- Build succeeded! ----------------------------- \e[0m"
    echo -e "\e[32m ----------------------------- Init steam ----------------------------- \e[0m"
    steam steam://rungameid/${STEAMID}
) || (
    echo -e "\e[31m ----------------------------- Build failed. Exiting script.----------------------------- \e[0m"
)
