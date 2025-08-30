.PHONY: setup test lint docs app

setup:
	python -m venv .venv && . .venv/bin/activate && pip install -r requirements.txt

test:
	pytest -q

docs:
	mkdocs build

serve-docs:
	mkdocs serve

app:
	streamlit run src/apps/streamlit_app.py
