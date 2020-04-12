emptyDf <- function(colnames,
                    nrow,
                    fillWith = "") {
  return(
    stats::setNames(
      as.data.frame(
        lapply(
          colnames,
          function(x)
            return(
              rep(
                fillWith,
                nrow)
            )
        ),
        stringsAsFactors = FALSE
      ),
      nm = colnames)
  );
}

append_lsdf_row <- function(data,
                            row) {
  dataCols <- names(data);
  rowCols <- names(row);
  extraDataCols <- dataCols[!(dataCols %in% rowCols)];
  extraRowCols <- rowCols[!(rowCols %in% dataCols)];

  ### If the data has columns missing from the row, add those to the row
  if (length(extraDataCols) > 0) {
    ### Note that 'nrow(row)' should normally always be 1, but you never know.
    row <- cbind(row, emptyDf(extraDataCols, nrow(row)));
  }

  ### Conversely, if the row has columns missing from the data, add those
  if (length(extraRowCols) > 0) {
    data <- cbind(data, emptyDf(extraRowCols, nrow(data)));
  }

  ### Sort row to match the column order of the data
  row <- row[, names(data)];

  ### Then we can safely rbind and return the result
  return(rbind(data, row));

}

