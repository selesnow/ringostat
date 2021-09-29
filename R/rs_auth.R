#' Set Ringostat API key
#'
#' @param api_key Your API key
#'
#' @return No return value, called for side effects
#' @export
#'
rs_auth <- function(api_key) {
  Sys.setenv('RS_API_KEY' = api_key)
  cli_alert_success("API token was set successfully")
}

rs_check_auth <- function() {
  if (  identical(Sys.getenv("RS_API_KEY"), "") ) cli_abort("You dont authorize, please set RS_API_KEY variable, or use rs_auth().")
}
