% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/01_api_rsuite.R
\name{rsuite_update}
\alias{rsuite_update}
\title{Updates RSuite to newest available version.}
\usage{
rsuite_update(lib.dir = Sys.getenv("R_LIBS_USER"))
}
\arguments{
\item{lib.dir}{folder path to install RSuite into. Folder must exist.
(type: character(1); default: \code{Sys.getevn("R_LIBS_USER")})}
}
\value{
TRUE if updated (invisible).
}
\description{
Updates RSuite to newest available version.
}
\examples{
\donttest{
  lib_dir <- tempfile("Rsuite_")
  dir.create(lib_dir, recursive = TRUE, showWarnings = FALSE)

  rsuite_update(lib_dir)
}

}
\seealso{
Other miscellaneous: \code{\link{rsuite_check_version}},
  \code{\link{rsuite_getLogger}},
  \code{\link{rsuite_get_ci_adapter_names}},
  \code{\link{rsuite_get_os_info}},
  \code{\link{rsuite_get_rc_adapter_names}},
  \code{\link{rsuite_get_repo_adapter_names}},
  \code{\link{rsuite_register_ci_adapter}},
  \code{\link{rsuite_register_rc_adapter}},
  \code{\link{rsuite_register_repo_adapter}},
  \code{\link{rsuite_unregister_ci_adapter}},
  \code{\link{rsuite_unregister_rc_adapter}},
  \code{\link{rsuite_unregister_repo_adapter}},
  \code{\link{tmpl_register}}
}
\concept{miscellaneous}
