# simplereport

This is a LaTeX class for a simple report.
The class name is `simplereport`.

## Installation

You need to have the `simplereport.cls` file in the directory where you use the class.
It is possible to install it permanently on your system, where you may use it from any directory, see [LaTeX/Installing Extra Packages](https://en.wikibooks.org/wiki/LaTeX/Installing_Extra_Packages).
Summary; find/create a `texmf` or `texmf/local` directory, and place `simplereport.cls` under `tex/latex/base`.

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

### `defpkg`

The option `defpkg` makes the class include a handful of default packages, including `mathtools` etc.

### Course

Some courses is included.
If you do not want to use the included ones, use the following LaTeX code in your preample:
```latex
\course[CUR-1001]{The name of the course}
```
The course code is an optional argument, if you do not want to use it, skip it.

Some from UiT have been added, e.g. if you want a report for INF-2200, use the option `inf2200`.

### INF-2700

Some relational algebra macros is added.
They need to be used in math environments.

 * select: \sel{attribute=2 \vee attribute1 \geq 3}{Relation}
 * project: \proj{attribute,attribute}{Relation}
 * rename: \rename{newname}{oldname}{relation}
 * join: \join{R}{S}
 * and: \wedge
 * or: \vee
 * not: \neg
