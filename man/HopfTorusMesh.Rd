% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/someMeshes.R
\name{HopfTorusMesh}
\alias{HopfTorusMesh}
\title{Hopf torus mesh}
\usage{
HopfTorusMesh(nlobes = 3, A = 0.44, alpha = NULL, nu, nv)
}
\arguments{
\item{nlobes}{number of lobes of the Hopf torus, a positive integr}

\item{A}{parameter of the Hopf torus, number strictly between
\code{0} and \code{pi/2}}

\item{alpha}{if not \code{NULL}, this is the exponent of a modified
stereographic projection, a positive number; otherwise the ordinary
stereographic projection is used}

\item{nu, nv}{numbers of subdivisions, integers (at least 3)}
}
\value{
A triangle \strong{rgl} mesh (class \code{mesh3d}).
}
\description{
Triangle mesh of a Hopf torus.
}
\examples{
library(cgalMeshes)
library(rgl)
mesh <- HopfTorusMesh(nu = 90, nv = 90)
open3d(windowRect = 50 + c(0, 0, 512, 512))
view3d(0, 0, zoom = 0.75)
shade3d(mesh, color = "forestgreen")
wire3d(mesh)
mesh <- HopfTorusMesh(nu = 90, nv = 90, alpha = 1.5)
open3d(windowRect = 50 + c(0, 0, 512, 512))
view3d(0, 0, zoom = 0.75)
shade3d(mesh, color = "yellowgreen")
wire3d(mesh)
}
