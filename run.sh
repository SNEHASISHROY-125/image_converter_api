#! bin/bash

echo "Installing the dependencies" 
apt install python3 virtualenv
python3 -m venv env

echo "Activating the virtual environment"
source env/bin/activate

pip install -r requirements.txt

echo "Starting the server"
uvicorn main:app --reload