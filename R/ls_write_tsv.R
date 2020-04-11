#' @export
ls_write_tsv <- function(data,
                         file,
                         encoding = limonaid::opts$get("encoding"),
                         preventOverwriting = limonaid::opts$get("preventOverwriting"),
                         silent = limonaid::opts$get("silent")) {

  ###-----------------------------------------------------------------------
  ### Check whether the directory to write to exists
  ###-----------------------------------------------------------------------

  dirToWriteTo <- dirname(file);
  if (nchar(dirToWriteTo) > 0) {
    if (!dir.exists(dirToWriteTo)) {
      stop("The directory you specified to write the output file to, '",
           dirToWriteTo, "', does not exist.");
    }
  }

  ###-----------------------------------------------------------------------
  ### Check whether the file exists
  ###-----------------------------------------------------------------------
  if (file.exists(file) && preventOverwriting) {
    stop("The filename you specified to write the output file to, '",
         file, "', already exists, and `preventOverwriting` is set to ",
         "TRUE, so I'm aborting.");
  }

  ###-----------------------------------------------------------------------
  ### Prepare data
  ###-----------------------------------------------------------------------

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
    ifelse(grepl(" |@",
                 data$text),
           paste0("\"",
                  data$text,
                  "\""),
           data$text);

  ### Quote strings
  data$name <-
    ifelse(grepl(" |@",
                 data$name),
           paste0("\"",
                  data$name,
                  "\""),
           data$name);

  ### Fix slash in "type/scale" column name
  colNames <- names(data);
  colNames[colNames == "type.scale"] <-
    "type/scale";

  ###-----------------------------------------------------------------------
  ### Writing file
  ###-----------------------------------------------------------------------

  ### Write file
  write.table(
    data,
    file = file,
    col.names = colNames,
    sep = "\t",
    na = "",
    quote = FALSE,
    row.names = FALSE,
    qmethod = "double",
    fileEncoding = encoding
  );

  return(invisible(data));

}
