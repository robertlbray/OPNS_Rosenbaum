make_data <- function(problem.param){
  set.seed(1)
  
  problem.param %>% {
    list(
      assembly = 
        tibble(
          x = runif(.$assembly.count),
          y = runif(.$assembly.count)
        ),
      competetor = 
        tibble(
          x = runif(.$competetor.count),
          y = runif(.$competetor.count)
        ),
      beta = 
        tibble(
          distance = .$distance,
          union = .$union
        ),
      union.fn = function(x, y) (x-1/2)^2+(y/4)^2,
      num.sites = .$num.sites,
      num.tries = .$num.tries
    )
  }
}