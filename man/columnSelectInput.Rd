% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/selectInput_column.R
\name{columnSelectInput}
\alias{columnSelectInput}
\title{A selectizeInput customized for data frames with column labels}
\usage{
columnSelectInput(
  inputId,
  label,
  data,
  selected = "",
  ...,
  col_subset = NULL,
  placeholder = "",
  onInitialize
)
}
\arguments{
\item{inputId}{passed to \code{\link[shiny]{selectizeInput}}}

\item{label}{passed to \code{\link[shiny]{selectizeInput}}}

\item{data}{\code{data.frame} object from which fields should be populated}

\item{selected}{default selection}

\item{...}{passed to \code{\link[shiny]{selectizeInput}}}

\item{col_subset}{a \code{vector} containing the list of allowable columns to select}

\item{placeholder}{passed to \code{\link[shiny]{selectizeInput}} options}

\item{onInitialize}{passed to \code{\link[shiny]{selectizeInput}} options}
}
\value{
a \code{\link[shiny]{selectizeInput}} dropdown element
}
\description{
A selectizeInput customized for data frames with column labels
}
\keyword{internal}
