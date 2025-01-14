% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/drop_save.R
\name{drop_save}
\alias{drop_save}
\title{drop_save}
\usage{
drop_save(
  object,
  path = NULL,
  mode = "overwrite",
  autorename = TRUE,
  mute = FALSE,
  verbose = FALSE,
  dtoken = get_dropbox_token(),
  ext = c("csv", "xlsx", "rds", "RData"),
  ...
)
}
\arguments{
\item{object}{R object to save}

\item{path}{The relative path on Dropbox where the file should get uploaded.}

\item{mode}{- "add" - will not overwrite an existing file in case of a
conflict. With this mode, when a a duplicate file.txt is uploaded, it  will
become file (2).txt. - "overwrite" will always overwrite a file -}

\item{autorename}{This logical determines what happens when there is a
conflict. If true, the file being uploaded will be automatically renamed to
avoid the conflict. (For example, test.txt might be automatically renamed to
test (1).txt.) The new name can be obtained from the returned metadata. If
false, the call will fail with a 409 (Conflict) response code. The default is `TRUE`}

\item{mute}{Set to FALSE to prevent a notification trigger on the desktop and
mobile apps}

\item{verbose}{By default verbose output is \code{FALSE}. Set to \code{TRUE}
if you need to troubleshoot any output or grab additional parameters.}

\item{dtoken}{The Dropbox token generated by \code{\link{drop_auth}}. rdrop2
will try to automatically locate your local credential cache and use them.
However, if the credentials are not found, the function will initiate a new
authentication request. You can override this in \code{\link{drop_auth}} by
pointing to a different location where your credentials are stored.}

\item{ext}{file extension that will be saved. here we suggest csv, excel, rds, RData}

\item{...}{other arguments for write.csv, write.xlsx, readRDS, save}
}
\description{
drop_save
}
\examples{
\dontrun{
drop_save(BOD, ext = "rds")
drop_save(BOD, ext = "RData")
drop_save(BOD, ext = "xlsx")
drop_save(BOD, ext = "csv")
}
}
\references{
\href{https://www.dropbox.com/developers/documentation/http/documentation#files-upload}{API documentation}
}
\author{
Lewis Hounkpevi
}
