# Personal academic website — José C. Milisenda

Trilingual (EN / CA / ES) Quarto website, publication-forward, auto-updating
from PubMed. English is complete; Catalan and Spanish have the machinery in
place and short draft content to fill in.

## What's here

```
_quarto.yml            Base config (theme, profiles)
_quarto-en.yml         English profile  → builds to _site/
_quarto-ca.yml         Catalan profile  → builds to _site/ca/
_quarto-es.yml         Spanish profile  → builds to _site/es/
index.qmd              Home (bio, research lines)
cv.qmd                 CV (education, posts, grants, publications)
contact.qmd            Contact + scholarly profiles
theme.scss / theme-dark.scss   Visual design (light + dark)
_auto_publications.qmd Publication list — regenerated from PubMed
scripts/fetch_pubs.py  Fetches your papers from PubMed
assets/profile.png     Placeholder photo — REPLACE with a real one
render.sh              Builds all three languages in the right order
.github/workflows/publish.yml   Auto-builds & deploys on every push
```

## Preview locally

1. Install Quarto: https://quarto.org/docs/get-started/  (and have Python 3).
2. In this folder:  `quarto preview`  (live reload), or `./render.sh` then open `_site/index.html`.

## Load your real publication list

The sample list is short. To pull your full, dated list from PubMed:

```bash
python scripts/fetch_pubs.py     # writes _auto_publications.qmd
```

Review it the first time: the query is `Milisenda JC[Author]`. If it misses
papers or picks up a namesake, adjust `AUTHOR_TERM` / `HIGHLIGHT` at the top of
the script. (This step needs internet to NCBI; it won't run inside Claude.)

## Publish it (free, GitHub Pages)

1. Create a free account at github.com.
2. New repository, **public**. For a clean URL, name it exactly
   `USERNAME.github.io` (→ served at `https://USERNAME.github.io/`).
   Any other name works too, served at `https://USERNAME.github.io/reponame/`.
3. Upload every file in this folder (drag-and-drop in the web UI, or `git push`).
4. Repo → **Settings → Pages → Build and deployment → Source: Deploy from a
   branch → branch `gh-pages` / root**. Save.
5. The included Action builds all three languages and deploys automatically on
   every push to `main`. First run takes ~2 min; then your site is live.

## Custom domain (optional, later)

Buy a domain (~10–15 €/yr). In Settings → Pages add it under "Custom domain",
then create the DNS records GitHub shows you. No files change.

## Still to do (yours)

- Replace `assets/profile.png` with a real photo (square, ≥400 px).
- Add `assets/Milisenda_CV.pdf` or remove the "Download PDF" link in `cv.qmd`.
- Confirm current job title / any facts adapted from the 2024 CV.
- Fill in the Catalan and Spanish content (the `when-profile="ca"/"es"` blocks).
