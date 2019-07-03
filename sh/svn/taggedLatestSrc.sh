#!/bin/bash

# svn update Specified repo and its repo tagged

WORK_ROOT=$1
PROJ_NAME=$2

cd ${WORK_ROOT}/${PROJ_NAME}

# remove already configured tags

#svn remove
