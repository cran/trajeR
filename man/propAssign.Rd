% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/model_adequacy.R
\name{propAssign}
\alias{propAssign}
\title{Assignment proportion}
\usage{
propAssign(sol, Y, A)
}
\arguments{
\item{sol}{Trajectory's object. An object of type Trajectory.}

\item{Y}{Matrix. A matrix containing the variables in the model.}

\item{A}{Matrix. A matrix containing the time variable data.}
}
\value{
A vector of real. The  proportion.
}
\description{
Calculate the proportion of individuals in a given group. That is the ratio of
the number of individuals in one group and all the individuals.
}
\examples{
data <- read.csv(system.file("extdata", "CNORM2gr.csv", package = "trajeR"))
data <- as.matrix(data)
sol <- trajeR(Y = data[, 2:6], A = data[, 7:11], degre = c(2, 2), Model = "CNORM", Method = "EM")
propAssign(sol, Y = data[, 2:6], A = data[, 7:11])
}
