# Hamza Projects Portfolio

Professional, multi-project monorepo for ML, data, and web demos. Ready for **GitHub Pages** docs and **Streamlit** app deployment.

## Highlights
- 🧪 CI: Lint + tests on pushes/PRs
- 📚 Docs: MkDocs (with Material theme) → GitHub Pages
- 🌐 Demo: Streamlit app (`src/apps/streamlit_app.py`)
- 🧠 ML: PyTorch scaffolds (Tifinagh MLP), notebook-friendly
- 🧾 Reports: LaTeX IMRAD template
- 🐳 Dockerfile & conda env
- 🧰 Scripts for local/Colab usage
- 🗂️ Clean structure and issue/PR templates

> Owner: **Hamza Oukhacha**  
> Created: 2025-08-30

---

## Structure
```
hamza-projects-portfolio/
├─ .github/
│  ├─ ISSUE_TEMPLATE/
│  └─ workflows/
├─ docs/                # MkDocs site (GitHub Pages)
├─ notebooks/           # Colab-friendly notebooks (Jupytext .py format)
├─ reports/latex/       # IMRAD LaTeX template
├─ scripts/             # Setup & run helpers
├─ src/
│  ├─ apps/             # Streamlit app
│  ├─ dspsvdd/          # DSPSVDD placeholder
│  └─ ml/               # Reusable ML code (PyTorch)
├─ tests/               # Pytest smoke tests
├─ data/                # (empty) place datasets here (or mount in Colab)
├─ Dockerfile
├─ Makefile
├─ mkdocs.yml
├─ requirements.txt
├─ environment.yml
└─ README.md
```

## Quickstart
```bash
# 1) Create & activate env (conda) or use pip
conda env create -f environment.yml
conda activate hamza-ml

# OR:
python -m venv .venv && source .venv/bin/activate  # (Windows: .venv\Scripts\activate)
pip install -r requirements.txt

# 2) Run Streamlit demo
streamlit run src/apps/streamlit_app.py

# 3) Build docs locally
mkdocs serve  # then open http://127.0.0.1:8000

# 4) Tests
pytest -q
```

## Deploy
- **Docs (GitHub Pages)**: push to `main` with Actions enabled → `pages.yml` deploys `docs/site`.  
- **Streamlit Cloud**: Create app from this repo and point it to `src/apps/streamlit_app.py`.

## Colab Data Paths
Notebooks use `/content/drive/MyDrive/Master/data/...`. Update paths in `notebooks/*.py` as needed.

## License
MIT — see `LICENSE`.
