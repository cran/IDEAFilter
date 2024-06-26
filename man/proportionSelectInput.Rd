% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/selectInput_proportion.R
\name{proportionSelectInput}
\alias{proportionSelectInput}
\title{A selectizeInput customized for unique element select from vector}
\usage{
proportionSelectInput(
  inputId,
  label,
  vec,
  selected = "",
  ...,
  placeholder = " ",
  onInitialize,
  sort = c("count", "alpha", "order")
)
}
\arguments{
\item{inputId}{passed to \code{\link[shiny]{selectizeInput}}}

\item{label}{passed to \code{\link[shiny]{selectizeInput}}}

\item{vec}{\code{vector} object from which unique terms should be sourced}

\item{selected}{default selection}

\item{...}{passed to \code{\link[shiny]{selectizeInput}}}

\item{placeholder}{passed to \code{\link[shiny]{selectizeInput}} options}

\item{onInitialize}{passed to \code{\link[shiny]{selectizeInput}} options}

\item{sort}{how to sort fields in dropdown}
}
\value{
a \code{\link[shiny]{selectizeInput}} dropdown element
}
\description{
A selectizeInput customized for unique element select from vector
}
\keyword{internal}
