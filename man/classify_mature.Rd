% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/morphMat-main.R
\name{classify_mature}
\alias{classify_mature}
\title{Classify mature}
\usage{
classify_mature(
  data,
  varNames = c("x", "y"),
  varSex = "sex",
  selectSex = NULL,
  method = "ld"
)
}
\arguments{
\item{data}{data.frame with allometric variables and sex category (male, female).
If sex category contains NA's, that row will be filtered.}

\item{varNames}{the name of two allometric variables to be used for analysis.}

\item{varSex}{the name of the variable containing sex information.}

\item{selectSex}{sex category to be used for analysis. If \code{selectSex = NULL} all the individuals will be used in the analysis.}

\item{method}{a character string indicating the discriminant analysis method, linear discriminant analysis \code{"ld"},
quadratic discriminant analysis \code{"qd"}.
We suggest begin the analysis using the \code{method = "ld"}.}
}
\value{
A data.frame of class 'classify', with x (independent), y (dependent) and classification of maturity
(juveniles = 0, adult = 1) variables.
}
\description{
Classify the individuals in two groups (0: juveniles, 1: adults) based on relative growth.
}
\details{
Classify the individuals in two groups (juveniles = 0 and adult = 1).

A Principal Components Analysis was conducted with two allometric variables (x: independent variable, y: dependent variable)
in log base, allowing to distinguish two groups that would represent juveniles and adult.
The individuals are assigned to each group using a hierarchical classification procedure
(hierarchical cluster with agglomeration method: "Ward.D" and the distance measure: "euclidean").
This method is based on establishing a predetermined number of groups (in this case, two) and assigning individuals
to one of the groups according to their loads on the two axes of the PCA (Corgos and Freire, 2006).

Using the results of the classification (PCA + cluster), a discriminant analysis (linear or quadratic) is conducted
to obtain a discriminating function that permitted any individuals to be classified as a
juvenile or an adult on the basis of the X and Y allometric variables.
}
\examples{
data(crabdata)

classify_data = classify_mature(crabdata, varNames = c("carapace_width", "chela_height"),
varSex = "sex_category", selectSex = NULL, method = "ld")

classify_data
}
