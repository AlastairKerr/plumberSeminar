library(tidyverse)
df=tibble(x=LETTERS[1:26], y=rnorm(26,1))
library(plumber)

#* Send back a value for a capital letter
#* @param key letter key
#* @get /noBox
#* @serializer unboxedJSON
function(key=""){
  df2= df %>% filter(x==key)
  df2$y  
}

#* Send back a value for a capital letter
#* @param key letter key
#* @get /box
#* @json
function(key=""){
  df2= df %>% filter(x==key)
  df2$y
}
