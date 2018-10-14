
install.packages("devtools")

# mran does not have the latest version of rtweet yet
devtools::install_github("mkearney/rtweet")

#detach("package:rtweet", unload = TRUE)
#packageVersion("rtweet")

#install.packages("rtweet")
#remove.packages("rtweet")

## load rtweet package
#install.packages("prettyunits")

library(rtweet)

twitter_token <- create_token(
      app = "RDemoJP",
      consumer_key = "qVEpuoEpfotXCXDfUFlQ2PMKH",
      consumer_secret = "Grm1aj0QnWEuNry00VBrcS9SXTR5CVsfOka6Ax56E4IGd4BlPK",
      access_token = "10633082-HZSRNNLFCGoeiywErGQDM6CasF5oHppPGg7O7jczN",
      access_secret = "D3FdPnTv4i7gt2onXZ2rNGCjqbx7OMJrkQeiSjqQJ5AlC",
      set_renv=TRUE
)


tweets <- search_tweets("Trump", n = 100)

View(tweets)
