#' Assess TSS data
#' 
#' Asssesses TSS data against the appropriate criteria and produces columns for excursions
#' @param TSS_data
#' @return dataframe with the following columns added; 'excursion_cen'
#' @export
#' @example
#' TP_assessment(TSS_data = "your-TSS-data")
#' 

TSS_assessment <- function(TSS_data) {
  TSS_summary <- TSS_data %>%
    mutate(excursion_cen = ifelse(!is.na(TSS_crit) & Result_cen > TSS_crit, 1, 0)
    )
  
  return(TSS_summary)
}