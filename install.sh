sudo apt install python3.10 rsync libfuse3*

mkdir -p Books

# Will install poetry if not installed
if [ -z "$(which poetry)" ]; then
  curl -sSL https://install.python-poetry.org | python3 -
fi

poetry install
echo $(date +"%Y-%m-%d %H:%M:%S") > .last
poetry run bash ./tgmount list dialogs