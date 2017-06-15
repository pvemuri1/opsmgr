#!/bin/bash
echo "Pavani test22..."
echo "${GIT_COMMIT}"
echo "Ali"
echo "${GERRIT_PATCHSET_REVISION}"
if [[ ! -z "${GERRIT_PATCHSET_REVISION}" ]]
then
  echo "Inside if block:"
  ssh -p 29418 mujali29@jupiter-vm288.pok.stglabs.ibm.com gerrit review --verified +1 ${GERRIT_PATCHSET_REVISION}
fi  

