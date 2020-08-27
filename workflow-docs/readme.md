---
---

# Workflow docs
This document shares information on any workflows running in this site.

# trigger-gitbub-pages-rebuild (Jekyll)
If a manual change is made to any item in a GitHub Pages (Jekyll) site, GitHub automatically runs an environment deployment called github-pages.

Since Jekyll is a static site, it will not re-build automatically to, say, allow you to access the current date. The reason for that is the "current date" is actually == "current date of the last build".


The workflow is contained within the `.github/workflows` folder and performs the following actions.

![trigger-github-workfklow.yml Script workflow](trigger-github-pages-workflow.png)

The workflow runs a script contained with the `.gitgub/scripts` folder and performs the following actions:

NOTE: The file the script creates is only temporary and is designed solely to trigger the github-pages environment deployment.
![trigger-github-pages.sh workflow](trigger-github-pages-script.png)

