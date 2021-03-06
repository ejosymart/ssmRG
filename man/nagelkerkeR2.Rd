% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extras.R
\name{nagelkerkeR2}
\alias{nagelkerkeR2}
\title{Nagelkerme method R-square}
\usage{
nagelkerkeR2(x)
}
\arguments{
\item{x}{An object of class 'glm'.}
}
\value{
Rsquare Nagelkerke's R squared.
}
\description{
Estimate Nagelkerke's R squared from the result of glm(). Evaluate the goodness of fit  for logistic regression.
}
\examples{
set.seed(7388)
n <- 300
x <- rnorm(n)
a <- 1
b <- -2
p <- 1/(1+exp(a+b*x))
y <- factor(ifelse(runif(n) < p, 1, 0), levels = 0:1)
mod1 <- glm(y ~ x, family=binomial)
nagelkerkeR2(mod1)
}
