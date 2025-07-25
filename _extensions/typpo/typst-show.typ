
// start typpo-show within typpo-article

#show: doc => typpo-article(

$if(title)$
  title: [$title$],
$endif$
$if(subtitle)$
  subtitle: [$subtitle$],
$endif$
$if(running-head)$
  running-head: [$running-head$],
$endif$
$if(by-author)$
  authors: (
$for(by-author)$
$if(it.name.literal)$
    ( name: [$it.name.literal$],
      last: [$it.name.family$],
      affiliation: [$for(it.affiliations)$$it.name$$sep$, $endfor$],
      $if(it.email)$
        email: [$it.email$],
      $endif$
      ),
$endif$
$endfor$
    ),
$endif$
$if(date)$
  date: [$date$],
$endif$
$if(lang)$
  lang: "$lang$",
$endif$
$if(region)$
  region: "$region$",
$endif$
$if(abstract)$
  abstract: [$abstract$],
$endif$
$if(papersize)$
  paper: "$papersize$",
$endif$
$if(mainfont)$
  font: ("$mainfont$",),
$elseif(brand.typography.base.family)$
  font: $brand.typography.base.family$,
$endif$
$if(mathfont)$
  mathfont: ($for(mathfont)$"$mathfont$",$endfor$),
$endif$
$if(monofont)$
  monofont: ($for(monofont)$"$monofont$",$endfor$),
$endif$
$if(fontsize)$
  fontsize: $fontsize$,
$elseif(brand.typography.base.size)$
  fontsize: $brand.typography.base.size$,
$endif$
$if(title)$
$if(brand.typography.headings.family)$
  heading-family: $brand.typography.headings.family$,
$endif$
$if(brand.typography.headings.weight)$
  heading-weight: $brand.typography.headings.weight$,
$endif$
$if(brand.typography.headings.style)$
  heading-style: "$brand.typography.headings.style$",
$endif$
$if(brand.typography.headings.decoration)$
  heading-decoration: "$brand.typography.headings.decoration$",
$endif$
$if(brand.typography.headings.color)$
  heading-color: $brand.typography.headings.color$,
$endif$
$if(brand.typography.headings.line-height)$
  heading-line-height: $brand.typography.headings.line-height$,
$endif$
$endif$
$if(number-sections)$
  sectionnumbering: "1.1.1.1.",
$endif$
$if(section-numbering)$
  sectionnumbering: "$section-numbering$",
$endif$
  pagenumbering: $if(page-numbering)$"$page-numbering$"$else$none$endif$,
  linenumbering: $if(line-number)$"1"$else$none$endif$,

$if(toc)$
  toc: $toc$,
$endif$
$if(toc-title)$
  toc_title: [$toc-title$],
$endif$
$if(toc-indent)$
  toc_indent: $toc-indent$,
$endif$
$if(toc-depth)$
  toc_depth: $toc-depth$,
$endif$

// Additional Typst variables
$if(leading)$
  leading: $leading$,
$endif$
$if(spacing)$
  spacing: $spacing$,
$endif$
$if(first-line-indent)$
  first-line-indent: $first-line-indent$,
$endif$
$if(all)$
  all: $all$,
$endif$
$if(linkcolor)$
  linkcolor: $linkcolor$,
$endif$
$if(col-gutter)$
  col-gutter: $col-gutter$,
$endif$
$if(bibliographystyle)$
  bibliographystyle: [$bibliographystyle$],
$endif$
$if(bibliography-title)$
  bibliography-title: [$bibliography-title$],
$endif$

// Conditional logic for two column layout

$if(two-column)$
  // default 2-column layout
  margin: $if(margin)$($for(margin/pairs)$$margin.key$: $margin.value$,$endfor$)$else$(x: 2.2cm, y: 2.6cm)$endif$,
  fontsize: $if(fontsize)$$fontsize$$else$11pt$endif$,
  cols: $if(columns)$$columns$$else$2$endif$,
$else$
  // single-column layout
  $if(margin)$margin: ($for(margin/pairs)$$margin.key$: $margin.value$,$endfor$),$endif$
  $if(fontsize)$fontsize: $fontsize$,$elseif(brand.typography.base.size)$fontsize: $brand.typography.base.size$,$endif$
  cols: $if(columns)$$columns$$else$1$endif$,
$endif$
  doc,
)
