#' Edit the links on a ticket
#'
#' @inheritParams rt_ticket_attachment
#' @param referred_to_by Tickets that are referred to
#' @param depended_on_by Tickets that are depended on
#' @param member_of Ticket groups?
#' @param refers_to Tickets that are referred to
#' @param depends_on Tickets that are depended on
#' @param ... Other arguments passed to \code{\link{rt_POST}}
#'
#' @return (numeric) The ID of the ticket
#'
#' @export
#'
#' @examples
#' \dontrun{
#' # Assuming we have tickets 20 and 21, we can make ticket 20 depend on ticket
#' # 21
#' rt_ticket_links_edit(20, depends_on = 21)
#' }
#'
rt_ticket_links_edit <- function(ticket_id,
                                 referred_to_by = NULL,
                                 depended_on_by = NULL,
                                 member_of = NULL,
                                 refers_to = NULL,
                                 depends_on = NULL,
                                 ...) {
  stopifnot(is.character(ticket_id) | is.numeric(ticket_id))

  # HasMember is invalid here but used in rt_ticket_links
  params <- compact(list(ReferredToBy = referred_to_by,
                         DependedOnBy = depended_on_by,
                         MemberOf = member_of,
                         RefersTo = refers_to,
                         DependsOn = depends_on))

  links_edit <- construct_newline_pairs(params)

  url <- rt_url("ticket", ticket_id, "links")
  response <- rt_POST(url, body = list(content = links_edit), ...)
  stopforstatus(response)

  message(response$body)
  invisible(ticket_id)
}
