% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/subset.R
\name{str_subset}
\alias{str_subset}
\title{Keep strings matching a pattern.}
\usage{
str_subset(string, pattern)
}
\arguments{
\item{string}{Input vector. Either a character vector, or something
coercible to one.}

\item{pattern}{Pattern to look for.

  The default interpretation is a regular expression, as described
  in \link[stringi]{stringi-search-regex}. Control options with
  \code{\link{regex}()}.

  Match a fixed string (i.e. by comparing only bytes), using
  \code{\link{fixed}(x)}. This is fast, but approximate. Generally,
  for matching human text, you'll want \code{\link{coll}(x)} which
  respects character matching rules for the specified locale.

  Match character, word, line and sentence boundaries with
  \code{\link{boundary}()}. An empty pattern, "", is equivalent to
  \code{boundary("character")}.}
}
\value{
A character vector.
}
\description{
This is a convenient wrapper around \code{x[str_detect(x, pattern)]}.
Vectorised over \code{string} and \code{pattern}
}
\examples{
fruit <- c("apple", "banana", "pear", "pinapple")
str_subset(fruit, "a")
str_subset(fruit, "^a")
str_subset(fruit, "a$")
str_subset(fruit, "b")
str_subset(fruit, "[aeiou]")

# Missings are silently dropped
str_subset(c("a", NA, "b"), ".")
}
\seealso{
\code{\link{grep}} with argument \code{value = TRUE},
   \code{\link[stringi]{stri_subset}} for the underlying implementation.
}

