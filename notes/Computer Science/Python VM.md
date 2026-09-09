venv
作用：
系统Python
│
├── 项目A
│   └── venv
│       ├── torch 2.1
│       └── numpy 1.26
│
└── 项目B
    └── venv
        ├── torch 2.5
        └── numpy 2.x
isolate each project to avoid version conflicts

- mkdir Amadeus
- cd Amadeus

- Create VE
- python3 -m venv .venv
- source .venv/bin/activate
- and the terminal becomes (.venv) user@Mac Amadeus %
- deactivate to exit and go back to normal python





deactivate

rm -rf .venv

python3.11 -m venv .venv

pip install 'cellpose[gui]'

python -m cellpose




### python@3.11 download


1.completely uninstall py 3.11

brew uninstall python@3.11
2.clean up rest files
rm -rf ~/Library/Python/3.11
rm -rf /usr/local/lib/python3.11


3. download
use home brew
homebrew install python@3.11
