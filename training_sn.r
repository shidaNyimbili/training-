zam_packages <- c("tidyverse", "here", "gifski", "gstat","gt","gtsummary","gghighlight","stringi", "ggthemes","ggridges","viridis",
                  "psych","labelled","readxl", "skimr","sjlabelled","sjstats","sjPlot", "sjmisc","readr","ggrepel","openxlsx",
                  "sysfonts","scales","magrittr","knitr","lubridate","Hmisc","haven","tidyr","reshape2","DescTools","extrafont",
                  "patchwork", "extrafontdb", "ggtext", "geomtextpath","zoo","psych","cowplot","ztable","pheatmap",
                  "RColorBrewer", "data.table", "d3heatmap","pheatmap","hablar", "gganimate", "dygraphs", "gapminder", "hrbrthemes",
                  "geomtextpath", "patchwork", "gridExtra", "grid", "rmarkdown", "forecast", 
                  "backtest", "quantmod", "tseries", "writexl", "ggpubr", "rcartocolor", "remotes", "geodata",
                  "shiny", "rgeoboundaries", "nasapower", "classInt","spData","tmap","tmaptools","spDataLarge",
                  "leaflet", "ggsflabel", "sf", "RSelenium", "netstat", "GGally", "calendR", "areaplot", "hexbin",
                  "webshot", "oceanis", "SPlit", "spdep","gsubfn", "proto","fpp", "mapview", "shinydashboard", "packrat",
                  "gt", "bigD","formattable", "reactablefmtr", "scales", "caret","predict3d", "ggpmisc", "cowplot", 
                  "googleway", "ggplot2", "caTools","ggrepel", "giscoR", "ggspatial", "sp", "glmnet", "rnaturalearth", 
                  "rnaturalearthdata", "pacman", "vroom", "rgdal","gridExtra", "GGally","ggraph","igraph","Matrix","network",
                  "quanteda", "sna","maps", "RODBC","elevatr", "cartography","Cairo","sfdep","spdep","igraph", 
                  "rnaturalearth", "terra","likert","DT", "transformr", "tidygraph","tm","tibble","quanteda.textplots","spData")

zam_packages

install.packages("remotes")

remotes::install_github()

install.packages(zam_packages)
