#here are the two data source, but really don't need to do this in R
#could easily supply the locations as data instead
#and use d3.tsv

#put items in data frame
items.df = read.delim(
  "http://download.bls.gov/pub/time.series/ap/ap.item"
  , allowEscapes=TRUE
  , header=TRUE
  , stringsAsFactors=FALSE
  , strip.white=TRUE
)[,-2,drop=F]

#load the average price file which is large
prices.df = read.delim(
  "http://download.bls.gov/pub/time.series/ap/ap.data.0.Current"
  , allowEscapes=TRUE
  , header=TRUE
  , stringsAsFactors=FALSE
  , strip.white=TRUE
)

require(rCharts)
options(viewer=NULL)

cpi1 <- rCharts$new()
cpi1$setLib(".")
cpi1$addAssets(
  jshead = "http://cdnjs.cloudflare.com/ajax/libs/angular.js/1.2.1/angular.min.js"
)
cpi1$setTemplate(
  chartDiv = '<div></div>',
  afterScript = '<script></script>'
)
cpi1