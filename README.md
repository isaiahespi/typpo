# Typpo Format

A Quarto + Typst format for PDF documents. This format is a bastardization of two other Quarto-Typst formats: [quarto-preprint](https://github.com/mvuorre/quarto-preprint) created by [Matti Vuorre](https://vuorre.com/) and [ctk-article](https://github.com/christopherkenny/ctk-article) created by [Christopher T. Kenny](https://www.christophertkenny.com/). I borrowed, or straight up copied, from their distinct formats in order to make my own here.

Learn more about [Quarto Extensions](https://quarto.org/docs/extensions/), about [creating extensions](https://quarto.org/docs/extensions/), or about creating your own [custom format](https://quarto.org/docs/extensions/) Quarto extension.

For creating custom Quarto Typst formats specifically, see [here](https://quarto.org/docs/output-formats/typst-custom.html).

Also check out these honorable mentions
-   [Styling documents using Quarto extensions](https://nrennie.rbind.io/training-quarto-extensions/)
-   [Quarto on Steroids](https://www.patalt.org/blog/posts/quarto-extensions/)

Of course, learn about [Typst](https://typst.app/docs/), get started with the [Typst Tutorial](https://typst.app/docs/tutorial/), and read up on how to [make a Typst template](https://typst.app/docs/tutorial/making-a-template/).

## Installing

Anyway, install this Quarto extension in two ways. First option: add it to an existing project by running the following in the terminal or command line

```zsh
quarto add isaiahespi/typpo
```
This `quarto add` command creates a directory within the current project `_extensions/typpo/`. After the extension is added, the `typpo-typst` format is ready to use.

Alternatively, you can start a new [Quarto project](https://quarto.org/docs/projects/quarto-projects.html) that uses the *typpo* template by running the `quarto use` command in the terminal

```bash
quarto use template isaiahespi/typpo
```
This will install the format extension and create an example qmd file
that you can use as a starting place for your document.

