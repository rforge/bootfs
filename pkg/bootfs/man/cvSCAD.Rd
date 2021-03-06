\name{cvSCAD}
\alias{cvSCAD}
\title{
Crossvalidation for SCAD SVM classification and feature selection.
}
\description{
Main wrapper for call of SCAD SVM classification.
}
\usage{
cvSCAD(logX, groupings, DIR, params = 
		list(seed = 123, ncv = 5, 
			repeats = 10, maxiter = 1000, 
			maxevals = 500, fs.method="scad"))
}
\arguments{
  \item{logX}{
	The data matrix. Samples in rows, features in columns.
}
  \item{groupings}{
	A list. Each list element is a named vector (length equals the
	number of samples), holding group assignments for each sample (either
	1 for group A and -1 for group B). 
}
  \item{DIR}{
	The output base directory.
}
  \item{params}{
	A parameter list with the following elements. \code{seed}: a random seed. \code{ncv}: the number of folds in the crossvalidation. \code{repeats}: number of repeats of the CV. \code{maxiter}: SCAD parameter for maximum iterations. \code{maxeval}: SCAD parameter for maximum evaluations.
 \code{fs.method}: The method for feature selection. One out of \emph{scad, 1norm, scad+L2, DrHSVM}. See package penalizedSVM for the methods.
 }
}
\details{
	Do a \code{ncv}-fold crossvalidation (CV) with \code{repeats} repeats. Each grouping assignment from \code{groupings} will be used as classification task. If more than one grouping is present, the package uses parallelisation in the package \code{multicore}.\cr

	This function is usually called by \code{\link{doCV}}.
}
\value{
CV result. A list with three elements \code{res, featlist and performance}, holding the crossvalidation data, an extracted features list in each cv-iteration and an overall performance object, holding information on the performance (AUC values and a roc curve object that can be plotted). See \code{\link{resultCV}} for making a summary plot for the CV.
}
\references{
Zhang, Hao Helen and Ahn, Jeongyoun and Lin, Xiaodong and Park, Cheolwoo: Gene selection using support vector machines with non-convex penalty. Bioinformatics (2006) 22 (1): 88-95
}
\author{
Christian Bender (christian.bender@tron-mainz.de)
}

\seealso{
\code{\link{doCV}}
Help of penalizedSVM package.
}
\examples{
\dontrun{
#todo
}
}
