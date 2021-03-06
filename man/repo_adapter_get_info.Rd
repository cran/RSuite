% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/20_repo_adapter.R
\name{repo_adapter_get_info}
\alias{repo_adapter_get_info}
\title{Returns information about repository the adapter is working on.}
\usage{
repo_adapter_get_info(repo_adapter, params)
}
\arguments{
\item{repo_adapter}{repo adapter object}

\item{params}{rsuite_project_params object}
}
\value{
named list with following entries:
\describe{
  \item{readonly}{TRUE if the repository is for reading only (type:logical)}
  \item{reliable}{TRUE if the content of the repository does not change over time
    unless repository changes enforce changes of the project itself (like project
    local repository) (type: logical).}
}
}
\description{
Returns information about repository the adapter is working on.
}
\examples{
# create you own Repo adapter
repo_adapter_create_own <- function() {
  result <- repo_adapter_create_base("Own")
  class(result) <- c("repo_adapter_own", class(result))
  return(result)
}

#' @export
repo_adapter_get_info.repo_adapter_own <- function(repo_adapter, params) {
  return(list(
     readonly = TRUE, # cannot be managed
     reliable = FALSE # package versions can change in time
  ))
}

}
\seealso{
Other in extending RSuite with Repo adapter: \code{\link{repo_adapter_create_base}},
  \code{\link{repo_adapter_create_manager}},
  \code{\link{repo_adapter_get_path}},
  \code{\link{repo_manager_destroy}},
  \code{\link{repo_manager_get_info}},
  \code{\link{repo_manager_init}},
  \code{\link{repo_manager_remove}},
  \code{\link{repo_manager_upload}}
}
\concept{in extending RSuite with Repo adapter}
