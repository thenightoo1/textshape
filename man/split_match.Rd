% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/split_match.R
\name{split_match}
\alias{split_match}
\alias{split_match_regex}
\title{Split a Vector By Split Points}
\usage{
split_match(x, split = "", include = FALSE, regex = FALSE, ...)

split_match_regex(x, split = "", include = FALSE, ...)
}
\arguments{
\item{x}{A vector with split points.}

\item{split}{A vector of places (elements) to split on or a regular
expression if \code{regex} argument is \code{TRUE}.}

\item{include}{An integer of \code{1} (\code{split} character(s) are not
included in the output), \code{2} (\code{split} character(s) are included at
the beginning of the output), or \code{3} (\code{split} character(s) are
included at the end of the output).}

\item{regex}{logical.  If \code{TRUE} regular expressions will be enabled for
\code{split} argument.}

\item{\ldots}{other arguments passed to \code{\link[base]{grep}} and
\code{\link[base]{grepl}}.}
}
\value{
Returns a list of vectors.
}
\description{
\code{split_match} - Splits a \code{vector} into a list of vectors based on
split points.

\code{split_match_regex} - \code{split_match} with \code{regex = TRUE}.
}
\examples{
set.seed(15)
x <- sample(c("", LETTERS[1:10]), 25, TRUE, prob=c(.2, rep(.08, 10)))

split_match(x)
split_match(x, "C")
split_match(x, c("", "C"))

split_match(x, include = 0)
split_match(x, include = 1)
split_match(x, include = 2)

set.seed(15)
x <- sample(1:11, 25, TRUE, prob=c(.2, rep(.08, 10)))
split_match(x, 1)
}
\references{
\url{http://stackoverflow.com/a/24319217/1000343}
}
\author{
Matthew Flickinger and Tyler Rinker <tyler.rinker@gmail.com>.
}
