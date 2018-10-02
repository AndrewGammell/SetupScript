title Basic setup

@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco feature enable -n allowGlobalConfirmation
choco upgrade chocolatey

set Packages=jdk8, gradle, maven, git.install, eclipse, notepadplusplus.install, putty, winscp, sourcetree, postman, springtoolsuite
(for %%a in (%Packages%) do ( 
   choco install %%a -y
))


