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

