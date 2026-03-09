# Data Deep Dives

Materials and documentation for the Data Deep Dive series hosted by the OCDO.

## Local Development

This site is built with [MkDocs](https://www.mkdocs.org/) using the [Material](https://squidfunk.github.io/mkdocs-material/) theme.

### Prerequisites

- Python 3.9+
- pip

### Setup

Install the required dependencies:

```bash
pip install mkdocs-material
```

### Preview Locally

Start a local dev server that auto-reloads on file changes:

```bash
mkdocs serve
```

Then open [http://127.0.0.1:8000/](http://127.0.0.1:8000/) in your browser.

## Deployment

The site is automatically built and deployed via a GitHub Action whenever changes are merged to `main`. No manual build step is needed.
