% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/all.R
\name{build_all}
\alias{build_all}
\title{Build xaringan slides to multiple outputs.}
\usage{
build_all(
  input,
  include = c("html", "social", "pdf", "png", "gif", "mp4", "pptx"),
  exclude = NULL,
  complex_slides = FALSE,
  partial_slides = FALSE,
  delay = 1,
  density = "72x72",
  slides = 1,
  fps = 1
)
}
\arguments{
\item{input}{Path to Rmd file of xaringan slides.}

\item{include}{A vector of the different output types to build. Options are
`"html"`, `"social"`, `"pdf"`, `"png"`, `"gif"`, `"mp4"`, and `"pptx"`.
Defaults to `c("html", "social", "pdf", "png", "gif", "mp4", "pptx")`.}

\item{exclude}{A vector of the different output types to NOT build. Options
are `"html"`, `"social"`, `"pdf"`, `"png"`, `"gif"`, `"mp4"`, and `"pptx"`.
Defaults to `NULL`, in which case all all output types are built.}

\item{complex_slides}{For "complex" slides (e.g. slides with panelsets or
other html widgets or advanced features), set `complex_slides = TRUE`.
Defaults to `FALSE`. This will use the {chromote} package to iterate through
the slides at a pace set by the `delay` argument. Requires a local
installation of Chrome.}

\item{partial_slides}{Should partial (continuation) slides be
included in the output? If `FALSE`, the default, only the complete slide
is included in the PDF.}

\item{delay}{Seconds of delay between advancing to and printing
a new slide. Only used if `complex_slides = TRUE` or `partial_slides =
TRUE`.}

\item{density}{Resolution of the resulting png files used in the png, gif,
and pptx output types file. Defaults to `"72x72"`.}

\item{slides}{A vector of the slide number(s) to return for the png output.
Defaults to `1`, returning only the title slide. You can get a zip
file of all the slides as pngs by setting `slides = "all"`).}

\item{fps}{Frames per second of the gif and mp4 files.}
}
\description{
Build xaringan slides to multiple outputs. Options are `"html"`, `"social"`
`"pdf"`, `"png"`, `"gif"`, `"mp4"`, and `"pptx"`. See each individual
build_*() function for details about each output type.
}
\examples{
\dontrun{
# Builds every output by default
build_all("slides.Rmd")

# Both of these build html, pdf, and gif outputs
build_all("slides.Rmd", include = c("html", "pdf", "gif"))
build_all("slides.Rmd", exclude = c("social", "png", "mp4", "pptx"))
}
}
