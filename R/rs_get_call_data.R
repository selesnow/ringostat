#' Get calls data
#'
#' @param date_from Start date
#' @param date_to End date
#' @param fields List of fields for selection from the call log, see \href{https://help.ringostat.com/knowledge-base/article/integration-with-ringostat-via-api#export_calllog_parameters}{link}
#' @param filters Filters for selecting data that meet a condition by field value
#' @param merge Aggregating the sample by the caller's number: 0 - do not combine; 1 - combine every 24 hours; 2 - combine for all time;
#' @param order Sorting a selection
#'
#' @return tibble with calls data
#' @export
#' @examples
#' \dontrun{
#' calls <- rs_get_call_data(
#'     date_from = "2021-09-01",
#'     date_to = "2021-09-30",
#'     fields = c('caller', 'utm_campaign'),
#'     filters = "utm_campaign=brand"
#' )
#' }
#'
rs_get_call_data <- function(
  date_from = Sys.Date() - 14,
  date_to = Sys.time(),
  fields = c('caller',
             'dst',
             'pool_name',
             'disposition',
             'calldate',
             'category_mark',
             'duration',
             'call_type',
             'waittime',
             'billsec',
             'connected_with',
             'call_counter',
             'proper_flag',
             'repeated_flag',
             'utm_source',
             'utm_medium',
             'utm_campaign',
             'utm_content',
             'utm_term',
             'uniqueid',
             'category_number',
             'employee_number',
             'employee_mark',
             'client_id',
             'remote_ip',
             'refferrer',
             'landing',
             'recording',
             'recording_wav',
             'call_card',
             'additional_number',
             'has_recording',
             'scheme_name',
             'duration_ms',
             'department',
             'caller_number'),
  filters = NULL,
  merge = 0,
  order = NULL
) {

  rs_check_auth()

  fields <- str_c(fields, collapse = ',')

  data <- request('https://api.ringostat.net/calls/list') %>%
          req_url_query(
            from = as.Date(date_from),
            to = as.Date(date_to) + 1,
            fields = fields,
            filters = filters,
            merge = merge,
            order = order,
            export_type = 'csv'
          ) %>%
          req_headers('Auth-key' = Sys.getenv("RS_API_KEY")) %>%
          req_perform() %>%
          resp_body_string() %>%
          I() %>%
          read_delim(delim  = ";", show_col_types = FALSE)


  return(data)

}
