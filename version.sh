#! /vin/bash
cd "D:\Learning\Python"
git status
git checkout dev
git pull
git checkout feature-Version
git pull
git merge dev

sed -e '$!d' config.ini 
read -p "Enter Version: " version
sed -i '$ c version='"$version"'' config.ini

git add .
git commit -m 'feat(Version): '"$version"''
git push