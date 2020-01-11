# tex with docker

## initialize

```shell
$ curl -fsSL https://raw.githubusercontent.com/nkjmsss/tex-docker/master/bin/install | sh
```

## Compile
### VSCode (suggested)

add below to settings.json

```json
"latex-workshop.latex.recipes": [
  {
    "name": "compile",
    "tools": [
      "ptex2pdf"
    ]
  }
],
"latex-workshop.latex.tools": [
  {
    "name": "ptex2pdf",
    "command": "docker",
    "args": [
      "run",
      "--rm",
      "-v",
      "%DIR%:/workdir",
      "paperist/alpine-texlive-ja",
      "latexmk",
      "%DOC%",
    ]
  }
],
"latex-workshop.latex.autoBuild.run": "onFileChange",
"latex-workshop.docker.enabled": true,
"latex-workshop.view.pdf.viewer": "tab",
```

### docker-compose

NOTE: tex entry file is `main.tex`

```shell
$ docker-compose up
```
