#' @export
ls_write_tsv <- function(data,
                         file) {

  ### Quote relevance equations if necessary
  data$relevance <-
    ifelse(
      data$relevance == 1,
      "1",
      ifelse(
        is.na(data$relevance) | (nchar(data$relevance) == 0),
        "",
        paste0("\"",
               data$relevance,
               "\"")
      )
    );

  ### Double quotes
  data$text <-
    gsub("\"",
         "\"\"",
         data$text);

  ### Quote strings
  data$text <-
    ifelse(grepl(" ",
                 data$text),
           paste0("\"",
                  data$text,
                  "\""),
           data$text);

  ### Fix slash in "type/scale" column name
  colNames <- names(data);
  colNames[colNames == "type.scale"] <-
    "type/scale";

  ### Write file
  write.table(
    data,
    file = file,
    col.names = colNames,
    sep = "\t",
    na = "",
    quote = FALSE,
    row.names = FALSE,
    qmethod = "double"
  );

  return(invisible(data));

}
