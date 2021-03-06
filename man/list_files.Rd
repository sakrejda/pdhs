% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/index.R
\name{list_files}
\alias{list_files}
\title{DHS data is delivered in .zip files and the names of these zip files
usually (but not always) encode the survey code (country, round, and
release).  These scheme means that at the listing stage the contents
can not be easily renamed althought _we_ assume case-ignorant naming
and later convert all names to lower case.}
\usage{
list_files(f)
}
\arguments{
\item{f}{paths to .zip files from DHS.}
}
\value{
Here for each .zip file we calculate a list of contained 
files and the survey code encoded in the names of these nested files.
}
\description{
DHS data is delivered in .zip files and the names of these zip files
usually (but not always) encode the survey code (country, round, and
release).  These scheme means that at the listing stage the contents
can not be easily renamed althought _we_ assume case-ignorant naming
and later convert all names to lower case.
}
