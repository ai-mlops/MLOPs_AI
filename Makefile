setup:
	python3 -m venv ../.MLOPs_AI
	source ../.MLOPs_AI/bin/activate
install:
	pip install --upgrade pip && pip install -r requirements.txt
	dvc pull -r origin
	
test:
	python3 -m pytest -vv -cov=hello hello_test.py