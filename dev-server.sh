python3 -m venv .venv
. ./.venv/bin/activate
pip install -r requirements.txt
mkdocs serve --livereload -a 127.0.0.1:8000
