#!/bin/sh
# Projects to release
REPOSITORY=TE03XX-Reference-Designs
# Numbers of projects to release (list like '1 2 3 4')
PROJECT_LIST='1 2 3 4 5 6 7 8'
# Project 1 description
# List of folders requred to release (First will be used as name)

NAME1='reference-TE0300 TE-EDK-IP'
# Tool used to build
TOOL1='EDK-13.3'
# Project Version
VER1='1.0'

# Project 2 description
NAME2='reference-TE0320 TE-EDK-IP'
TOOL2='EDK-13.3'
VER2='1.0'

# Project 3 description
NAME3='blinkin-TE0300'
TOOL3='ISE-13.2'
VER3='1.0'

# Project 4 description
NAME4='blinkin-TE0320'
TOOL4='ISE-13.2'
VER4='1.0'

# Project 5 description
NAME5='TE0300-MIG-2_3'
TOOL5=''
VER5='1.0'

# Project 6 description
NAME6='TE0320-MIG-2_3'
TOOL6=''
VER6='1.0'

# Project 7 description
NAME7='vcom-TE0300'
TOOL7='ISE-13.2'
VER7='1.0'

# Project 8 description
NAME8='vcom-TE0320'
TOOL8='ISE-13.2'
VER8='1.0'

############# Do not edit below this line !!!
SUBVER=`git rev-parse --short HEAD`

if [ -z "$PROJECT_LIST" ]; then exit ; fi
cd ..
for l in $PROJECT_LIST
do
	namelist=NAME$l
	tool=TOOL$l
	ver=VER$l
	name=${!namelist}
	set $name
	for proj in ${!namelist}
	do
		zip -rq $1-${!tool}-v${!ver}.${SUBVER}.zip ${REPOSITORY}/${proj}
	done
done
cd ${REPOSITORY}

