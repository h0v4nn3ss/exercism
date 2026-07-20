library(stringr)

print_name_badge <- function(id, name, department) {
  if (is.na(id) && is.null(department)){
    str_glue("{name} - OWNER")
  } else if (is.na(id)){
    str_glue("{name} - {str_to_upper(department)}")
  } else if (is.null(department)) {
    str_glue("[{id}] - {name} - OWNER")
  } else {
    str_glue("[{id}] - {name} - {str_to_upper(department)}")
  }
}

salaries_no_id <- function(ids, salaries) {
  sum(salaries[is.na(ids)])
}
