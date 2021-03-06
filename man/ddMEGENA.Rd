% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ddMEGENA.R
\name{ddMEGENA}
\alias{ddMEGENA}
\title{Integration function to use MEGENA to perform network analyses of DGCA results.}
\usage{
ddMEGENA(ddcor_res, adjusted = TRUE, pval_gene_thresh = 0.05,
  evalCompactness = TRUE, nPerm = 100, hubPVal = 0.05,
  modulePVal = 0.05, minModSize = 10, maxModSize = 1000,
  saveOutput = FALSE, parallelize = FALSE, nCores = 4, ...)
}
\arguments{
\item{ddcor_res}{The table of differential correlations outputted from ddcor. Expected to have pValDiff or pValDiff_adj columns as well as zScoreDiff, Gene1, +/- Classes columns.}

\item{adjusted}{Logical indicating whether adjusted p-values from the differential correlation table (i.e., column "pValDiff_adj", when adjusted = TRUE) or unadjusted p-values (i.e., column "pValDiff", when adjusted = FALSE) should be used to subset the table into significant and non-significant portions.}

\item{pval_gene_thresh}{p-value threshold to call a gene as having significant differential correlation or not.}

\item{evalCompactness}{Logical indicating whether or not the resulting modules should be filtered for compactness. For inputs with relatively small numbers of significant gene pairs, this may not be desirable. Note that if this option is not chosen, all of the modules will be returned, but some of the module-specific results will not be available for all of these modules.}

\item{nPerm}{The number of permutations to use in evaluating module hubs and module compactness in do.MEGENA.}

\item{hubPVal}{The p-value threshold used to classify a gene as a hub within a module.}

\item{modulePVal}{The p-value threshold used to include or disclude modules following module compactness evaluation in do.MEGENA.}

\item{minModSize}{The minimum module size.}

\item{maxModSize}{The minimum module size.}

\item{saveOutput}{Whether the output of MEGENA should be saved in the current directory. Default = FALSE.}

\item{parallelize}{Logical indicating whether or not multiple cores should be utilized as a form of parallel processing. Requires the doMC package.}

\item{nCores}{If parallelize is TRUE, the number of cores to use in the processing. Ignored if parallelize is FALSE.}

\item{...}{Additional arguments to do.MEGENA from the MEGENA R package.}
}
\value{
A list containing a the planar filter network, the data frame of identified differentially correlated modules, as well as various other objects including module-specific hub genes, depending on the parameters chosen.
}
\description{
Takes a table of results from a DGCA analysis and inputs it into the MEGENA package pipeline.
}

