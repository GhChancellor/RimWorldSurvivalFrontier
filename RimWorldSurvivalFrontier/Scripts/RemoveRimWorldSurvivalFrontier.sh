#!/bin/bash

echo
MODNAME="RimWorldSurvivalFrontier"
# ================= DEPLOYED MOD (runtime location) =================
PROJECTPATH="/home/${USER}/Documenti/Archivio/Store/Steam/steamapps/common/RimWorld/Mods/${MODNAME}"

rm -rf ${PROJECTPATH}

echo -e "${PROJECTPATH} removed"
