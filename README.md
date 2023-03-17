# markdown-resume

A tool that uses [pandoc](https://pandoc.org/MANUAL.html#pandocs-markdown) to generate a good looking CV in .pdf and .html formats from a vanilla markdown file. 

Supports working with multiple markdown files at the same time (if, for example you need them in multiple languages), and doesn't depend on jekyll nor latex.

Absolutely no dependencies if you use GitHub CI to build the resulting files!. Just put your resume markdown file under `src/`, commit and push. You'll find a zip file with the output files in the [CI workflow summary page](https://github.com/actions/upload-artifact#where-does-the-upload-go).

You can use [src/sample.md](`src/sample.md`) for reference.

## Running locally

You'll need to install `pandoc` and `wkhtmltopdf`. Afterwards just run `make`!

on Linux:

```bash
sudo apt install pandoc wkhtmltopdf
make
open output/sample.pdf
```

To have the output files automagically regenerated when you edit the source files:

```bash
sudo apt install pandoc wkhtmltopdf inotify-tools
make watch
```

## Running with Docker

If you have docker installed, you can run

```bash
make docker
```

While the docker container is running, the `src/` and the `output/` directories are mounted to it and pdfs will be re-generated whenever the markdown files are edited.


# Development

## Contributing

Contributions welcome! Especially new styles and tweaks to the default style.


## Comming soon

- multiple styles
- styles consisting of multiple .css files
- FontAwesome icons in the default style


## TODO
- [x] list out prereqs for the script to work locally
- [x] dockerfile for local compilation
- [x] CI with tests, compilation and output download
- [ ] working style selection
- [ ] multiple css files in a style (for vendored stuff)
- [ ] fontAwesome icons in the default styles
- [ ] default style tweaks (link colors?)
