% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/30_rc_adapter.R
\name{rc_adapter_prj_struct_add}
\alias{rc_adapter_prj_struct_add}
\title{Puts project structure under RC adapter's managed version control.}
\usage{
rc_adapter_prj_struct_add(rc_adapter, params)
}
\arguments{
\item{rc_adapter}{rc adapter object}

\item{params}{rsuite_project_params object of the project.}
}
\description{
Puts project structure under RC adapter's managed version control.
}
\examples{
# create you own RC adapter
rc_adapter_create_own <- function() {
  result <- rc_adapter_create_base("Own")
  class(result) <- c("rc_adapter_own", class(result))
  return(result)
}

#' @export
rc_adapter_prj_struct_add.rc_adapter_own <- function(rc_adapter, params) {
  # ... add project specified by params under RC ...
}

}
\seealso{
Other in extending RSuite with RC adapter: \code{\link{rc_adapter_create_base}},
  \code{\link{rc_adapter_get_version}},
  \code{\link{rc_adapter_is_under_control}},
  \code{\link{rc_adapter_pkg_struct_add}},
  \code{\link{rc_adapter_remove_admins}}
}
\concept{in extending RSuite with RC adapter}
