% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fortify_MSwM.R
\name{autoplot.MSM.lm}
\alias{autoplot.MSM.lm}
\title{Autoplot \code{MSwM::MSM.lm}}
\usage{
\method{autoplot}{MSM.lm}(object, prob.colour = "#FF0000",
  prob.linetype = "dashed", ...)
}
\arguments{
\item{object}{\code{MSwM::MSM.lm} instance}

\item{prob.colour}{Line colour for probabilities}

\item{prob.linetype}{Line type for probabilities}

\item{...}{other arguments passed to \code{autoplot.ts}}
}
\value{
ggplot
}
\description{
Autoplot \code{MSwM::MSM.lm}
}
\examples{
\dontrun{
library(MSwM)
d <- data.frame(Data = c(rnorm(50, mean = -10), rnorm(50, mean = 10)),
                exog = cos(seq(-pi/2, pi/2, length.out = 100)))
d.mswm <- MSwM::msmFit(lm(Data ~.-1, data = d), k=2, sw=rep(TRUE, 2),
                       control = list(parallelization = FALSE))
autoplot(d.mswm)
}
}
