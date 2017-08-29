#### my services / devices
cinst -y lastpass
cinst -y googlechrome
cinst -y dropbox # this prompts for login (but chocolatey ignores it)
cinst -y itunes
cinst -y spotify 

#### sys / file utils
cinst -y vlc
cinst -y sysinternals
cinst -y rdcman
cinst -y greenshot
cinst -y 7zip.install
cinst -y treesizefree
cinst -y winmerge
cinst -y fiddler
cinst -y imageresizer -version 3.0.4442.6002
#USE  BASH INSTEAD:  cinst -y winscp baretail #(WINDOWS SUBSYSTEM FOR LINUX)
#optional: virtualbox speccy winscp ccleaner recuva nmap
#manual install: mouserecorder.com

#### creative or developer 
cinst -y git
cinst -y paint.net
cinst -y firefox
cinst -y nodejs.install
cinst -y visualstudiocode
cinst -y webstorm
cinst -y sublimetext3
cinst -y sourcetree
#MANUAL/fail: 
#linqpad4?, githubforwindows?, SP designer? sharepointmanager2013?, fl studio?
#Licensed: Office, Adobe CS, NCH Debut, biztree, balsamiq, pianoteq?

#Powershell Config
find-module sharepointpnppowershellonline | install-module
update-help

echo "Phew. Done. Don't skip a reboot... :)"
pause
