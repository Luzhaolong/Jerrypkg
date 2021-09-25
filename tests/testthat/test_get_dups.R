library(Jerrypkg)
library(testthat)
test_that("get_duplicates returns duplicates records from the dataset with a given keys",
          {expect_equal(nrow(get_duplicates(get_dup_test_data,pol_nbr,pol_eff_date)),24)})


test_that("assert_duplicates returns whether or not duplicates occur from the dataset with given keys",
          {expect_equal(assert_duplicates(get_dup_test_data,pol_nbr,pol_eff_date),'get_dup_test_data has dups under this level!')
           expect_equal(assert_duplicates(get_dup_test_data,pol_nbr,pol_eff_date,premises_nbr,bldg_nbr,v1),'No duplication found in the get_dup_test_data!')
           })
