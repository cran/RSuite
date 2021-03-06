% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/02_api_prj.R
\name{prj_start}
\alias{prj_start}
\title{Creates project structure at the specified path.}
\usage{
prj_start(name = NULL, path = getwd(), skip_rc = FALSE,
  tmpl = "builtin")
}
\arguments{
\item{name}{name of the project to create. It must not contain special characters
like \\/\"\'<> otherwise project folder could not be created. It can be NULL.
If so project will be created at path directly with the name of the first folder.
(type: character).}

\item{path}{path to the folder where project structure should be created.}

\item{skip_rc}{if TRUE skip adding project under revision control.
(type: logical, default: FALSE)}

\item{tmpl}{name of the project template (or path to it) to use for project
structure  creation.
(type: character).}
}
\value{
rsuite_project object for the project just created.
}
\description{
Creates project structure at the specified path.
}
\details{
The project is not loaded, just created.

If name passed folder under such name will be created and project structure
will be placed under it. If not passed folder under path will contain project
structure and project name will be assumed to be basename of the path.

Logs all messages from the building process onto the rsuite logger. Use \code{logging::setLevel}
to control logs verbosity. DEBUG level turns on building and downloading messages.

Project templates have to include a PARAMETERS file
}
\examples{
# create exemplary project base folder
prj_base <- tempfile("example_")
dir.create(prj_base, recursive = TRUE, showWarnings = FALSE)

# start project
prj <- prj_start("my_project", skip_rc = TRUE, path = prj_base)

}
\seealso{
Other in project management: \code{\link{prj_build}},
  \code{\link{prj_clean_deps}}, \code{\link{prj_init}},
  \code{\link{prj_install_deps}}, \code{\link{prj_load}},
  \code{\link{prj_lock_env}}, \code{\link{prj_pack}},
  \code{\link{prj_start_package}},
  \code{\link{prj_unload}}, \code{\link{prj_zip}}
}
\concept{in project management}
