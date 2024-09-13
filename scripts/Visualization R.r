source("scripts/r prep2.r")

# Read shapefile
districts_zam <- st_read("Data/Districts.shp")

# Read HIV.prevalence.rates data
actionhiv <- read_xlsx("Data/prevdataactionhiv.xlsx")


actionhiv

# Extract year from the 'period' column
actionhiv <- actionhiv %>%
  mutate(year = str_sub(period, start = nchar(period) - 4, end = nchar(period)))

# Select relevant columns and handle missing values
actionhiv.1 <- actionhiv %>%
  select(1, 2, 3, 5) %>%
  na.omit()

# Rename columns
actionhiv.2 <- actionhiv.1 %>%
  rename(prov = 1,
         distrt = 2,
         prev.rt = 3,
         yr = 4)

actionhiv.2

# Reshape the data
actionhiv.3 <- actionhiv.2 %>%
  gather(key = subRt, value = rate, c(prev.rt))

actionhiv.3

# Extract relevant columns from provinces_zam
districts_zam1 <- districts_zam %>%
  select(7, 10) %>%
  na.omit()

# Group and join data
actionhiv.4 <- actionhiv.3 %>%
  group_by(yr, distrt, subRt)

actionhiv.4

actionhiv.5 <- left_join(actionhiv.4,
                         districts_zam1,
                         by = c("distrt" = "DISTRICT")) %>%
  sf::st_as_sf()

actionhiv.5


# Define a reversed color palette
rev_palette <- rev(RColorBrewer::brewer.pal(9, "Blues"))

# Plotting
plot <- ggplot() +
  geom_sf(data = actionhiv.5, aes(fill = rate)) +
  scale_fill_gradient(name = "Prev Rates(%)",
                      low = rev_palette[length(rev_palette)],
                      high = rev_palette[1]) +
  ggtitle("Spatial Distribution of HIV/AIDS Prevalence Rates Across Districts") +
  facet_wrap(~yr) + theme_minimal()

# View the plot
print(plot)

# Save the plot
ggsave("visualization/prev_rate.png",
       device = "png",
       type = "cairo",
       height = 7.5,
       width = 16)
