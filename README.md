# Portfolio

A dead-simple static portfolio — no build step, no framework. Three files do the work:

| File | What it is |
|---|---|
| `index.html` | The page (hero · about · projects · footer). |
| `style.css` | The look. The `:root` block at the top is the **central style** — change a variable, the whole site re-themes. |
| `projects.js` | The **project data**. Each entry in the `projects` array renders one tile. |

## Editing

- **Add / remove a project** → edit the `projects` array in `projects.js`. Copy an object, change the fields. That's it.
- **Re-theme the whole site** → edit the CSS variables in the `:root` block at the top of `style.css`.
- **Your name / about / links** → edit `index.html` (hero + about sections).

## Preview locally

```sh
python3 -m http.server 8080
# then open http://localhost:8080   (or http://<this-vm-ip>:8080)
```

Or just open `index.html` in a browser.

## Deploy (self-hosted on the platform)

```sh
docker build -t portfolio .
docker run --rm -p 8080:8080 portfolio
```

The image runs as uid 101 and serves on **:8080**, not :80 — the target cluster enforces
Pod Security Admission `restricted`. The comment at the top of the `Dockerfile` is the
canonical explanation; don't change the base or the port without reading it.

To check the image still satisfies that contract:

```sh
./testing/run-all.sh
```

Every push to `main` publishes the image to `ghcr.io/pumapumapumas/portfolio`; the run's
summary prints the published digest to pin in the deployment chart.
