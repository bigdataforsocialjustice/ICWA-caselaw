base_url = "https://api.case.law/v1/cases/?page_size=896&search=%22ICWA%22"
get_cases <- httr::GET(url = base_url)
get_cases <- httr::content(get_cases, as="raw")
json <- jsonlite::fromJSON(rawToChar(get_cases))
icwa_cases <- tibble::as_tibble(json$results)

df<- icwa_cases$jurisdiction %>%
  dplyr::group_by(name_long) %>%
  dplyr::filter(name_long %in% c("Texas","California", "Oklahoma", "Arizona", "Colorado", "South Dakota", "New Mexico", "North Dakota", "Oklahoma")) %>%
  dplyr::summarise(counts = n())

ggplot2::ggplot(df, aes(x = reorder(name_long, -counts), y = counts)) +
  geom_bar(fill = "#0073C2FF", stat = "identity") +
  geom_text(aes(label = counts), vjust = -0.3) + 
  theme_pubclean() + ggtitle("ICWA Caselaw By State") +
  xlab("State Name") + ylab("Number of Cases")

case_url = "https://api.case.law/v1/cases/1597254/?full_case=true"
auth_header <- httr::add_headers('Authorization' = 'Token XXXX')
get_case <- httr::GET(url = case_url, auth_header)
get_case <- httr::content(get_case, as="parsed")

# create an empty data frame
df <- setNames(data.frame(matrix(ncol = 2, nrow = 0)), c("id", "text"))

#loop through all icwa cases and store in the dataset
for (i in 1:nrow(icwa_cases)){
  tryCatch({
    get_case_url = paste0(icwa_cases[i,2],"?full_case=true")
    get_case_url <- httr::GET(url = get_case_url)
    get_case_url <- httr::content(get_case_url, as="parsed")
    if (!is.null(get_case_url$casebody[[2]])) {
      df[i,1] <- get_case_url$id
      df[i,2] <- get_case_url$casebody[[2]][3]$opinions[[1]]$text
    }
  }
  , error=function(e){cat("There seems to be a problem :",conditionMessage(e), "\n")})
}
df <- df[complete.cases(df), ]

