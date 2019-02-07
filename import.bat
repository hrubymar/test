rem rm -rf ./.git
git init
git remote add origin https://github.com/hrubymar/test.git
git pull
git add .
rem git remote add origin git@github.com:hrubymar/test.git
git commit -m "first commit"
git push -u origin master