ls_import_lsg <- function(x) {

  res <- xml2::read_xml(x);

  return(res);

}


# devtools::load_all();
# a <- ls_import_lsg(system.file("extdata", "limesurvey_group_1370.lsg", package="limonaid"));
# b <- xml2::as_list(a);
# c <- xml2::as_xml_document(b);
# identical(a, c); ### Not identical because {xml2} doesn't write with CDATA
# xml2::write_xml(c, here::here("inst", "extdata", "limesurvey_group_1370_rewritten.lsg"))
# ^ This imports correctly though
