#' Download call recording
#'
#' @param call_id uniqueid of call
#' @param out_file name of output wav file
#'
#' @return TRUE if has been downloaded successfully
#' @export
#' @examples
#' \dontrun{
#' rs_download_record("ua-987h79879")
#' }
rs_download_record <- function(
  call_id,
  out_file = NULL
) {

  call_data <- rs_get_call_data(
    date_from = '2010-01-01',
    date_to = Sys.time(),
    fields = c("recording_wav", "has_recording"),
    filters = str_glue("uniqueid={call_id}")
    )

  if ( call_data$has_recording == 0 ) {
    cli_alert_danger("This call has no recording")
    return(FALSE)
  } else {
    if ( is.null(out_file) ) out_file <- str_c(out_file, ".wav", collapse = "")
    download.file(call_data$recording_wav, destfile = out_file)
    cli_alert_success(str_glue("File {out_file} has been downloaded successfully!"))
    return(TRUE)
  }

}
