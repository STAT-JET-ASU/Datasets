galtonparentheights <- read.csv(file = "Instructor/galtonheightdata.csv") %>% 
  group_by(Family) %>% 
  summarize(Father = mean(Father),
            Mother = mean(Mother)) %>% 
  select(Father, Mother)

# write.csv(galtonparentheights, file = "Instructor/galtonparentheights.csv", row.names = FALSE)