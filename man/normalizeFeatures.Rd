% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/normalizeFeatures.R
\name{normalizeFeatures}
\alias{normalizeFeatures}
\title{Normalize features}
\usage{
normalizeFeatures(task, method = "standardize", exclude = character(0L),
  range = c(0, 1), on.constant = "quiet")
}
\arguments{
\item{task}{[\code{\link{Task}}]\cr
The task.}

\item{method}{[\code{character(1)}]\cr
Normalizing method. Available are:\cr
\dQuote{center}: Subtract mean.\cr
\dQuote{scale}: Divide by standard deviation.\cr
\dQuote{standardize}: Center and scale.\cr
\dQuote{range}: Scale to a given range.\cr}

\item{exclude}{[\code{character}]\cr
Names of the columns to exclude.
The target does not have to be included here.
Default is none.}

\item{range}{[\code{numeric(2)}]\cr
Range for method \dQuote{range}.
Default is \code{c(0,1)}.}

\item{on.constant}{[\code{character(1)}]\cr
How should constant vectors be treated? Only used, of \dQuote{method != center},
since this methods does not fail for constant vectors. Possible actions are:\cr
\dQuote{quiet}: Depending on the method, treat them quietly:\cr
  \dQuote{scale}: No division by standard deviation is done, input values.
     will be returned untouched.\cr
  \dQuote{standardize}: Only the mean is subtracted, no division is done.\cr
  \dQuote{range}: All values are mapped to the mean of the given range.\cr
\dQuote{warn}: Same behaviour as \dQuote{quiet}, but print a warning message.\cr
\dQuote{stop}: Stop with an error.\cr}
}
\value{
[\code{\link{Task}}].
}
\description{
Normalize features by different methods.
Internally \code{\link[BBmisc]{normalize}} is used for every feature column.
Non numerical features will be left untouched and passed to the result.
For constant features most methods fail, special behaviour for this case is implemented.
}
\seealso{
\code{\link[BBmisc]{normalize}}

Other eda_and_preprocess: \code{\link{capLargeValues}};
  \code{\link{createDummyFeatures}};
  \code{\link{dropFeatures}};
  \code{\link{mergeSmallFactorLevels}};
  \code{\link{removeConstantFeatures}};
  \code{\link{summarizeColumns}}
}

