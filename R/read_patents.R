#' Reading US Patents
#' 
#' Reading in patent files and binding them
#' 
#' @param file_dir  A folder of csv files from the US Patent Database
#' @return A data frame of binded patents
#'  
#' @import lubridate
#'  
#' @export



read_patents <- function(file_dir){
  patents <- do.call("rbind", 
                     lapply(list.files(file_dir, full.names = T),
                            function(x){
                              df <- read.csv(x)
                              df$App_Date <- ymd(as.character(df$App_Date))
                              df$Issue_Date <- ymd(as.character(df$Issue_Date))
                              return(df)}))
  return(patents)
}