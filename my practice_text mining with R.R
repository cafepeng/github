text<-c("because I could not stop for death-","he kindly stopped for me-",
        "The carriage held but just OUrselves-","and Immortality")
text

#install.packages("dplyr",dependencies = TRUE)
library(dplyr)
text_df<-data_frame(line=1:4, text=text)
text_df

install.packages("tidytext",dependencies = TRUE)
#remove.packages("tidytext")
library(tidytext)
text_df %>%
  unnest_tokens(word,text)

library(janeaustenr)
library(dplyr)
library(stringr)

origin_books<-austen_books() %>%
  group_by(book) %>%
  mutate(linenumber= row_number(),
         chapter=cumsum(str_detect(text,)))
  

