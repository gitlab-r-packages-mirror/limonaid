testthat::test_that("creating a simple survey works", {
  ls <- Survey$new("Test Survey");
  testthat::expect_equal(ls$titles, "Test Survey");
})

testthat::test_that("adding groups works", {
  ls <- Survey$new("Test Survey");
  ls$add_group("Group 1");
  ls$add_group("Group 2");
  testthat::expect_equal(ls$groups$`1`$titles[['en']], "Group 1");
})

testthat::test_that("adding a question works", {
  ls <- Survey$new("Test Survey");
  ls$add_group("Group 1");
  ls$add_question(groupId = 1,
                  code = "firstQuestion",
                  type = "radiobuttons");
  testthat::expect_equal(ls$groups$`1`$questions$firstQuestion$code,
                         "firstQuestion");
})
