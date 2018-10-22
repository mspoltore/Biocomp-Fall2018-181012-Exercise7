# BioComputing Exercise 7

rm(list=ls())
setwd("~/Desktop/biocomp2018/exercise7/Biocomp-Fall2018-181012-Exercise7")
iris = read.csv("iris.csv", header = TRUE)

# code for question 1
oddRow = function(dataFrame){
  rows = dataFrame[c(1:nrow(iris)%%2 == 1),]
  return(rows)
}

oddRow(iris)


# code for question 2
# Print number of species sightings in iris, 
# speciesName = setosa, virginica, vericolor
numberSpecies = function(speciesName){
  species = (iris[iris$Species == speciesName,])
  nSpecies = nrow(species)
  return(nSpecies)
}
numberSpecies("virginica") # gives #virginica
numberSpecies("versicolor") # gives #versicolor
numberSpecies("setosa") # gives #setosa

# Return a dataframe for flowers with sepal width greater
# than specified value
sepalFrame = function(desiredWidth){
  width = (iris[iris$Sepal.Width > desiredWidth,])
  return(width)
}
sepalFrame(3.7)

# Write a csv for each species 
speciesCSV = function(speciesName){
  speciesTotal = (iris[iris$Species == speciesName,]) 
  # grabs all data rows for desired species
  filename = paste(speciesName, "csv", sep = ".")
  # creates a filename based on desired species
  write.csv(speciesTotal, filename, row.names = FALSE)
  # writes csv containing species data, using the filename
}

speciesCSV("virginica")
speciesCSV("setosa")
speciesCSV("versicolor")
