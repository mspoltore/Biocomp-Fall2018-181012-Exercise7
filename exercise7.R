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





