# Coding assignment based on Rosenbaum (2013)

source('header.R')

set.seed(1)

list(
  assembly.count = 12, #number of assembly plants
  competetor.firm.count = 3, #number of competing suppliers
  competetor.factory.count = 12, #number of factories owned by these suppliers
  distance = 10, #distance cost parameter
  union = 2, #union cost parameter
  num.sites = 4, #number of factory locations we must choose
  lambda.value = 2 #lambda parameter (see page 8)
) %>% 
  make_problem_data %>% 
  find_best_location