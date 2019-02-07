rem rm -rf ./.git
rem git init
rem git remote add origin https://github.com/hrubymar/test.git
rem git pull
rem git add .
rem git remote add origin git@github.com:hrubymar/test.git
rem git commit -m "first commit"
rem git push -u origin master

mkdir ..\testtfs
cd ..\testtfs
git clone https://github.com/hrubymar/test.git
cd ..\TestApp
xcopy . ..\testtfs\test /E /H /Y
cd ..\TestApp
git remote add origin https://github.com/hrubymar/test.git
git add .
git commit -m "tfs commit"
git push -u origin tfs