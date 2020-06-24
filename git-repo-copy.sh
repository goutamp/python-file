#!/bin/bash
# import multiple remote git repositories to local CODE dir

# settings / change this to your config
remoteHost=github.com
remoteUser=goutamp
remoteDir="php"
newRepoName="test1"

#install Rsync
yum install rsync -y

if [ -d "$remoteDir" ]; then
    rm -rf $remoteDir
    rm -rf $newRepoName
fi

#clone the repository
git clone git@$remoteHost:$remoteUser/$remoteDir.git

#change the directory 
cd $remoteDir
sed -i 's/Hello World!/Hello World!update-24/1' hello.php
cd ..
pwd
#clone the new repositories
git clone git@$remoteHost:$remoteUser/$newRepoName.git

#Execute the Rsync command
rsync -ar  --exclude=".*" $remoteDir $newRepoName
pwd
cd $newRepoName
pwd
git add .
git commit -m " Update the repo name "
git push origin master
