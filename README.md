# Introduction to R Workshop for Columbia STAR Program

## Overview
This workshop is designed as a two-day intro to R workshop. Today we'll cover some fundamentals to building Shiny apps and design-thinking. After this workshop, you will be able to:

- Be familiar with R and Rstudio
- Conduct exploratory data analysis
- Understand different data types
- Fundamentals of data frame analysis
- Create visuals in R
- Build a Shiny App
- Load your own data
- Understand reactive functions
- Deploy to shinyapps.io

## Workshop format
We will have two 1.5 hour workshop sessions, and homework assignments designed to help practice what you learned in the workshop. Here's an outline of what will be covered in each section:

### Workshop 1 - June 2, 2023
### Fundamentals of data analysis in R
Getting familiar with the R environment, and starting to look at data through code
- Overview of Rstudio environment (intro only)
- Variables/classes/data types
- Read in your own data (we'll be working with a Kaggle dataset)
- Fundamentals of data frame analysis
- Create basic graphs - introduction to ggplot2
- Overview of Shiny set up
- [Homework 1](/hw_1/)

### Workshop 2 - June 9, 2023
### Intro to Shiny
How do we take the graphics from our last session and make them interactive?
- Using widgets
- Create interactive charts from hw assignment
- Understand UI framework
- Deploy to shinyapps.io
- Intro to advanced reactive variables
- [Homework 2](/hw_2)

### Slides
For the best experience, I would view the slides online [here](https://docs.google.com/presentation/d/1quw8JVVBsEEMUrewK0Q4F-rbD1raPWfEYh0n5gNP_k0/edit?usp=sharing).


## Pre-Workshop Instructions
Here are instructions to complete before our first workshop on June 2!

### Requirements
1. [Install the latest version of R](https://www.r-project.org/about.html#:~:text=R%20is%20a%20language%20and,by%20John%20Chambers%20and%20colleagues)
2. [Install RStudio Desktop](https://posit.co/download/rstudio-desktop)
3. Sign up for a free [shinyapp.io account](https://www.shinyapps.io)

### Setting up your workspace
1. Install the required libraries in R:
`install.packages(c("shiny", "DT", "readr", "plotly", "dplyr", "tidyverse", "knitr", "rsconnect", "rmarkdown", "janitor"))`
2. **Due this on or after May 30, 2023!**
<br>
Clone or download the `workshop` branch of this repo 



## Helpful links
- [Shiny gallery](https://shiny.rstudio.com/gallery/)
- [Shiny widgets](https://shiny.rstudio.com/gallery/widget-gallery.html)
- [Shiny dashboard](https://rstudio.github.io/shinydashboard/get_started.html)
- [Scoping rules for Shiny](https://shiny.rstudio.com/articles/scoping.html) (More info on global.R file)
- [Plotly Library R](https://plotly.com/r/)


## Book recommendations
- [R for Everyone](https://www.jaredlander.com/r-for-everyone) by Jared Lander
- [Mastering Shiny](https://mastering-shiny.org/) by Hadley Wickham
- [Storytelling with Data](https://www.amazon.com/Storytelling-Data-Visualization-Business-Professionals/dp/1119002257) by Cole Nussbaumer Knaflic
- [The Wall Street Journal Guide to Information Graphics](https://www.amazon.com/Street-Journal-Guide-Information-Graphics/dp/0393347281) by Dona M. Wong