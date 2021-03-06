\name{gplot.target}
\alias{gplot.target}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Display a Graph in Target Diagram Form }
\description{
  Displays an input graph (and associated vector) as a "target diagram," with vertices restricted to lie at fixed radii from the origin.  Such displays are useful ways of representing vertex characteristics and/or local structural properties for graphs of small to medium size.
}
\usage{
gplot.target(dat, x, circ.rad = (1:10)/10, circ.col = "blue", 
    circ.lwd = 1, circ.lty = 3, circ.lab = TRUE, circ.lab.cex = 0.75,
    circ.lab.theta = pi, circ.lab.col = 1, circ.lab.digits = 1,
    circ.lab.offset = 0.025, periph.outside = FALSE,
    periph.outside.offset = 1.2, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dat}{ an input graph. }
  \item{x}{ a vector of vertex properties to be plotted (must match the dimensions of \code{dat}). }
  \item{circ.rad}{ radii at which to draw reference circles. }
  \item{circ.col}{ reference circle color. }
  \item{circ.lwd}{ reference circle line width. }
  \item{circ.lty}{ reference circle line type. }
  \item{circ.lab}{ boolean; should circle labels be displayed? }
  \item{circ.lab.cex}{ expansion factor for circle labels. }
  \item{circ.lab.theta}{ angle at which to draw circle labels. }
  \item{circ.lab.col}{ color for circle labels. }
  \item{circ.lab.digits}{ digits to display for circle labels. }
  \item{circ.lab.offset}{ offset for circle labels. }
  \item{periph.outside}{ boolean; should "peripheral" vertices be drawn together beyond the normal vertex radius? }
  \item{periph.outside.offset}{ radius at which "peripheral" vertices should be drawn if \code{periph.outside==TRUE}. }
  \item{\dots}{ additional arguments to \code{\link{gplot}}. }
}
\details{
  \code{\link{gplot.target}} is a front-end to \code{\link{gplot}} which implements the target diagram layout of Brandes et al. (2003).  This layout seeks to optimize various aesthetic criteria, given the constraint that all vertices lie at fixed radii from the origin (set by \code{x}).  One important feature of this algorithm is that vertices which belong to mutual dyads (described by Brandes et al. as ``core'' vertices) are treated differently from vertices which do not (``peripheral'' vertices).  Layout is optimized for core vertices prior to placing peripheral vertices; thus, the result may be misleading if mutuality is not a salient characteristic of the data.

The layout for \code{gplot.target} is handled by \code{\link{gplot.layout.target}}; additional parameters are specied on the associated manual page.  Standard arguments may be passed to \code{\link{gplot}}, as well.
}
\value{
  A two-column matrix of vertex positions (generated by \code{\link{gplot.layout.target}})
}
\references{ 
Brandes, U.; Kenis, P.; and Wagner, D.  (2003).  ``Communicating Centrality in Policy Network Drawings.'' \emph{IEEE Transactions on Visualization and Computer Graphics,} 9(2):241-253.
}
\author{Carter T. Butts \email{buttsc@uci.edu}}
%\note{ ~~further notes~~ }

% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{ \code{\link{gplot.layout.target}}, \code{\link{gplot}} }
\examples{

#Generate a random graph
g<-rgraph(15)

#Produce a target diagram, centering by betweenness
gplot.target(g,betweenness(g))
}
\keyword{ graphs }% at least one, from doc/KEYWORDS
\keyword{ hplot }% __ONLY ONE__ keyword per line
