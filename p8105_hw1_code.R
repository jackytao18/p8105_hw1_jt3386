library(ggplot2)
library(tidyverse)
data("penguins", package = "palmerpenguins")
nrow(penguins)
ncol(penguins)
names(penguins)
mean(penguins$flipper_length_mm,na.rm = FALSE)
ggplot(data = penguins,
       aes(x = bill_length_mm,
           y = flipper_length_mm))+ 
  geom_point(aes(color = species,
                 shape = species))

pb2_df = 
  tibble(
    rdm_sample = rnorm(10),
    rdm_sample_pos = rdm_sample > 0,
    chr_sample = c("This", "is", "the", "solution", "for", "Homework", "One", "by", "Jacky", "Tao"),
    fct_sample = factor(x = c(1.1,2.1,3.1,1.1,1.1,2.1,1.1,3.1,3.1,2.1), labels = c("He", "She", "It"))
  )
length(pull(pb2_df,chr_sample))
length(pull(pb2_df,fct_sample))
pb2_df
mean(pull(pb2_df,chr_sample))
mean(pull(pb2_df,rdm_sample))
mean(pull(pb2_df,fct_sample))
mean(pull(pb2_df,rdm_sample_pos))

as.numeric(pull(pb2_df,chr_sample))
as.numeric(pull(pb2_df,fct_sample))
as.numeric(pull(pb2_df,rdm_sample))
as.numeric(pull(pb2_df,rdm_sample_pos))
