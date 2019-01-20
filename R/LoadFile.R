#' LoadFile function - road data multiful files in folder
#' @param x A text
#' @return The data of {x}
#' @export

LoadFile<-function(x){
  requireNamespace("data.table", quietly=TRUE)
  fileList<-list.files(path=x,pattern=".csv",full.names = TRUE)
  data<-rbindlist(lapply(fileList,read.csv))
  makeActiveBinding("data", LoadFile, .GlobalEnv)
  bindingIsActive("data", .GlobalEnv)
  print(data)
}
