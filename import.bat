rem rm -rf ./.git
rem git init
rem git remote add origin https://github.com/hrubymar/test.git
rem git pull
rem git add .
rem git remote add origin git@github.com:hrubymar/test.git
rem git commit -m "first commit"
rem git push -u origin master

rem https://CrucisSoftware@dev.azure.com/CrucisSoftware/TestGit/_git/TestGit

cd .\TestApp
dir
rd ..\testtfs
mkdir ..\testtfs
cd ..\testtfs
git clone https://CrucisSoftware@dev.azure.com/CrucisSoftware/TestGit/_git/TestGit
git config --global user.email "tfs@example.com"
git config --global user.name "TFS"
cd ..\TestApp
xcopy . ..\testtfs\test /E /H /Y
cd ..\testtfs\test
dir
rem git remote add origin https://CrucisSoftware@dev.azure.com/CrucisSoftware/TestGit/_git/TestGit
rem git pull origin master
git add .
git commit -m "tfs commit"
git push -u origin master --force
