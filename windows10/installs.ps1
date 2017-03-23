# my services / devices
cinst -y lastpass
cinst -y googlechrome
cinst -y dropbox # this prompts for login (but chocolatey ignores it)
cinst -y itunes
cinst -y itunes

#utils
cinst -y vlc
cinst -y hostsman
cinst -y sysinternals
cinst -y rdcman
cinst -y greenshot
cinst -y 7zip.install
cinst -y winscp
cinst -y treesizefree
cinst -y winmerge
cinst -y fiddler
cinst -y imageresizer -version 3.0.4442.6002
#BLOAT category: virtualbox speccy winscp ccleaner recuva nmap
#FAIL/MANUAL: mouserecorder.com

#creative or developer 
cinst -y spotify 
cinst -y paint.net
cinst -y firefox
cinst -y git
cinst -y nodejs.install
cinst -y phantomjs
cinst -y visualstudiocode
cinst -y sublimetext3
cinst -y sourcetree
cinst -y atom
cinst -y baretail 
cinst -y meld
git config --global merge.tool meld
git config --global mergetool.meld.path c:/Progra~2/meld/bin/

#cinst -y adobe-creative-cloud #prompts. log in to start downloads. (safe to ignore)
#MANUAL/fail: linqpad4 githubforwindows sharepointdesigher2013x32 sharepointmanager2013

#Powershell Config
find-module sharepointpnppowershellonline | install-module
update-help

echo "Phew. Done. Don't skip a reboot... :)"
pause