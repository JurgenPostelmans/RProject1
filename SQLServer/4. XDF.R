list.files(rxGetOption("sampleDataDir"))

mortgagefiles <- list.files(rxGetOption("sampleDataDir"),
            pattern = "mortDefaultSmall\\d*.csv",
            full.names = TRUE)
mortgXdf <- tempfile(fileext = ".xdf")

lapply(mortgagefiles, FUN = function(csv_file) {
    rxImport(inData = csv_file,
                outFile = mortgXdf,
                append = file.exists(mortgXdf))
    }
)

rxGetInfo(mortgXdf)

rxGetVarInfo(mortgXdf)