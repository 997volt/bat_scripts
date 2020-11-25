
rem create github repo same as Project_name

set workspace_dir=C:\Users\user\STM32CubeIDE\workspace_1.4.0
set project_name=stm32_bluepill_template
set project_url=https://github.com/997volt/%project_name%.git
set commit_message="initial commit"

cd %workspace_dir%
git clone %project_url%

xcopy %workspace_dir%\scripts\gitignore_template %workspace_dir%\%project_name%\.gitignore
xcopy %workspace_dir%\scripts\README_template.md %workspace_dir%\%project_name%\README.md

cd %project_name%
git add .
git status
git commit -m %commit_message%
git push origin master

cd C:\Users\user\STM32CubeIDE\workspace_1.4.0
cd %project_name%
git status

