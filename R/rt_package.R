#' The \code{rt} package
#'
#' \code{rt} provides a programming interface to the
#' \href{https://rt-wiki.bestpractical.com/wiki/REST}{Request Tracker API}.
#'
#' Everything should be implemented and all functions should return a reasonably
#' useful result that's suitable for integrating into your workflows.
#'
#' ## Setup
#'
#' Before you can do anything useful with this package, you'll need to do three
#' things:
#'
#' 1. Determine your base URL and set it using
#' `Sys.setenv(RT_BASE_URL="your url here)`. In most cases, this will be the
#' same as the URL of the page you use to log in to RT.
#' 2. Determine and set your credentials. You can skip setting them if you like
#' and skip to step 3 or you can set them using the `RT_USER` and `RT_PASSWORD`
#' environmental variables via `Sys.setenv`. See \code{\link{rt_login}} for
#' more.
#' 3. Log in using R by calling `rt_login`. See \code{\link{rt_login}} for more.
#'
#' A typical flow for setting up your R session to work with RT might look like
#' this:
#'
#' ```
#' Sys.setenv(RT_BASE_URL = "http://example.com/rt",
#'            RT_USER = "me@example.com",
#'            RT_PASSWORD = "mypassword")
#  rt_login()
#' ```
#'
#' If you use RT a lot, you might consider putting code like the above in your
#' .Renviron, minus the call to `rt_login()` so the environmental variables are
#' available but you aren't logging into RT every time you start R. See ?Startup
#' for more information.
#'
#' ## Available Functions
#'
#' ### General
#'
#' - \code{\link{rt_login}}
#' - \code{\link{rt_logout}}
#'
#' ### Tickets
#'
#' - \code{\link{rt_ticket_search}}
#' - \code{\link{rt_ticket_create}}
#' - \code{\link{rt_ticket_edit}}
#' - \code{\link{rt_ticket_history}}
#' - \code{\link{rt_ticket_history_comment}}
#' - \code{\link{rt_ticket_history_reply}}
#' - \code{\link{rt_ticket_links}}
#' - \code{\link{rt_ticket_links_edit}}
#' - \code{\link{rt_ticket_merge}}
#' - \code{\link{rt_ticket_properties}}
#' - \code{\link{rt_ticket_attachments}}
#' - \code{\link{rt_ticket_attachment}}
#' - \code{\link{rt_ticket_attachment_content}}
#'
#' ### Users
#'
#' - \code{\link{rt_user_create}}
#' - \code{\link{rt_user_edit}}
#' - \code{\link{rt_user_properties}}
#'
#' ### Queues
#'
#' - \code{\link{rt_queue_properties}}
#'
#' @docType package
#' @name rt
#'
NULL
