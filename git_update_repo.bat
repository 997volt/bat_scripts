
set workspace_dir=C:\Users\user\STM32CubeIDE\workspace_1.4.0
set project_name=bat_scripts
set project_url=https://github.com/997volt/%project_name%.git
set commit_message="add scripts"

cd %workspace_dir%
cd %project_name%

git add .
git status
pause

git commit -m %commit_message%
git push origin master
git status