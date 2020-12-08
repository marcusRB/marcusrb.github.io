#!/bin/bash

### Creating some function
function echobold { #'echobold' is the function name
    echo -e "\033[1m${1}\033[0m" # this is whatever the function needs to execute.
}
function echobold { #'echobold' is the function name
    echo -e "${BOLD}${1}${NONE}" # this is whatever the function needs to execute, note ${1} is the text for echo
}
function echoitalic { #'echobold' is the function name
    echo -e "\033[3m${1}\033[0m" # this is whatever the function needs to execute.
}

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echobold "                              UPDATING WEBSITE"
echo "                                    version 1.4"
echo ""
echoitalic "* Written by  : MarcusRB"
echoitalic "* E-mail      : marcusrb@dataschool.tech"
echoitalic "* Last update : "$(date)
echoitalic "* Version     : v1.4"
echo ""
echoitalic "* Description : This script will set some directories, execute some things, "
echoitalic "                and will then update the website."
echo ""
echo "Update v1.4 - dic20200 - add git branch develop, feature, release, hotfixes"
echo ""
echo ""
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Today's: "$(date)
TODAY=$(date +"%Y%m%d")
echo ""
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echobold "The following directories are set."

# Mac Config
ROOT="/Users/marcusrb/Documents/DEV"
WEBSITE="${ROOT}/dev_hugo"
WEBSITEPUBLIC="${WEBSITE}/public"



# Ubuntu Config
# ROOT="/home/marcusrb/Documents/"
# WEBSITE="${ROOT}/dev_academic_quickstart"
# WEBSITEPUBLIC="${WEBSITE}/public"

echo "Root directory____________ ${ROOT}"
echo "Website root directory____ ${WEBSITE}"
echo "Public website____________ ${WEBSITEPUBLIC}"

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echobold "Deploying updates to GitHub."

echo "* Building the project..."
cd ${WEBSITE}
rm -rvf ${WEBSITEPUBLIC}

git status
git checkout -b feature-updated-x
git checkout feature-updated-x
git add -A
git commit -m "Committing the (updated) source files."
git push origin feature-updated-x

hugo # if using a theme, replace by `hugo -t <yourtheme>`

### Depending on your needs, you can create a LICENSE file and README.md. You can use
### these as an example
cp -v ${WEBSITE}/LICENSE ${WEBSITEPUBLIC}/LICENSE
# cp -v ${WEBSITE}/README.md ${WEBSITEPUBLIC}/README.md
### If you want to re-direct your GitHub page to another domain, you'll have to make a
### 'CNAME' file.
echo "https://www.marcusrb.com" > ${WEBSITEPUBLIC}/CNAME

echo "* Going to 'public' folder..."

cd ${ROOT}/marcusrb.github.io

cp -afv ${WEBSITE}/public/* .

echo "* Add changes to git..."

git status
git checkout -b develop
git add -A

echo "* Commit changes..."
msg="> Rebuilding site $(date)."
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg."

# Push source and build repos.
git push --force origin develop

# Create Pull Request
git request-pull -p https://github.com/marcusRB/marcusrb.github.io.git master:develop

# Come Back
cd ${ROOT}
