# Minas Aslanyan — Academic Homepage

Personal research page for post-doctoral applications.
Static HTML, no build step, no dependencies. Deploys to GitHub Pages as-is.

## Contents

```
index.html                        the entire site (HTML + CSS + JS in one file)
assets/docs/Minas_Aslanyan_CV.pdf CV linked from the header and Contact section
assets/img/                       drop portrait.jpg here (optional)
.nojekyll                         tells GitHub Pages to serve files verbatim
```

## Deploying

### Option A — personal site at `https://<username>.github.io`

Create a **public** repo named exactly `<username>.github.io`, then:

```bash
git init && git branch -M main
git add . && git commit -m "Add academic homepage"
git remote add origin https://github.com/<username>/<username>.github.io.git
git push -u origin main
```

Pages turns on automatically. Live in ~1 minute.

### Option B — project site at `https://<username>.github.io/<repo>`

Push to any public repo, then in the repo: **Settings → Pages → Source: Deploy from a branch → `main` / `(root)` → Save**.

### Custom domain

Add a file named `CNAME` containing just your domain (e.g. `minasaslanyan.com`), then point a `CNAME` DNS record at `<username>.github.io`.

## Editing

Everything lives in `index.html`. Common edits:

| What | Where |
|---|---|
| Add a publication | `<section id="publications">` — copy an existing `<li>` block |
| Add a research area | `<section id="research">` — copy a `<article class="card">` block |
| Change the accent colour | `--accent` in the `:root` block near the top |
| Availability banner | the `<span class="badge">` line in the hero |

### Adding a portrait

`index.html` already points at `assets/img/portrait.jpg`. Until that file exists the
page falls back to the "MA" monogram, so nothing looks broken either way.

Easiest route — hand the helper script your photo and it crops square, resizes to
600px, and drops it in the right place:

```bash
./place-portrait.sh ~/Downloads/your-headshot.jpg
```

Or just save a square image to `assets/img/portrait.jpg` yourself. No HTML edit needed.

### Keeping the CV in sync

Re-export the CV and overwrite `assets/docs/Minas_Aslanyan_CV.pdf`. The filename is
referenced in two places in `index.html`; keeping the name stable means no edits.

## Notes

- Light and dark themes both ship; the toggle in the nav remembers the visitor's choice.
- The page prints cleanly (`Cmd/Ctrl-P`) if anyone wants a paper copy.
- `schema.org/Person` JSON-LD is embedded so search engines link the page to the
  Google Scholar and LinkedIn profiles.
- Phone number and the advisor's email are deliberately **not** on the public page.
  They stay in the CV PDF, which is where reviewers expect them.
