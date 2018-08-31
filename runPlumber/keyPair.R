library(tidyverse)
df=tibble(x=LETTERS[1:26], y=rnorm(26,1))
library(plumber)

#* Send back a value for a capital letter
#* @param key letter key
#* @get /lookup
function(key=""){
  df %>% filter(x==key)
}

