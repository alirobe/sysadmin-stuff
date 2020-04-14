#### my services / devices
cinst -y microsoft-edge
cinst -y spotify 

#### sys / file utils
cinst -y vlc
cinst -y sysinternals
cinst -y rdcman
cinst -y 7zip.install
cinst -y treesizefree
cinst -y winmerge
cinst -y winscp
cinst -y fiddler
cinst -y paint.net
# cinst -y baretail # can use bash 'tail' instead
# cinst -y virtualbox 
# cinst -y wireshark

#### dev
cinst -y git
cinst -y nodejs.install
cinst -y yarn
cinst -y python3
cinst -y vscode
cinst -y visualstudio2017buildtools
cinst -y azure-cli
cinst -y sql-server-management-studio
# cinst -y hostsman
# cinst -y firefox
# cinst -y docker-desktop

#### collab 
cinst -y slack
cinst -y microsoft-teams
# Licensed: https://office.com, biztree, balsamiq, pianoteq


#Powershell Config
find-module sharepointpnppowershellonline | install-module
update-help

echo "Phew. Done. Don't skip a reboot... :)"
pause
