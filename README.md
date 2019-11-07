# simplereport

This is a LaTeX class for a simple report.

Clone this repo, and call the command

```bash
texhash
```

Then you can use the class from wherever.
The class name is `simplereport`, and it have some options.

## Class Options

### `bib`

If you like to use `bibtex` with `biber`, use the option `bib`.
Remember to use 

```latex
\addbibresource{path/to/file.bib}
```
to add your bibliography.
Then to compile the PDF use the commands
```bash
pdflatex file.tex
biber file
pdflatex file.tex
```

### `defaultpackages`

The option `defaultpackages` makes the class include a handful of default packages, including `mathtools` etc.

### Course

Some courses is included.
If you do not want to use the included ones, use the following LaTeX code in your preample:
```latex
\def\course{The name of the course}
\def\courseCode{CUR-1001}
```
Some from UiT have been added, e.g. if you want a report for INF-2200, use the option `inf2200`.


