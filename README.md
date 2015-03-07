This README file is the supporting documentation for this Shiny application. It consists of three sections:

1. Objective for the Course Project
2. Description of this Shiny application
3. Directions on how to visualize this Shiny application

The Shiny application can be accessed [here](https://kenntcl.shinyapps.io/mpgcar/).

**Objective for the Course Project**

1. Write a shiny application with associated supporting documentation. The documentation should be thought of as whatever a user         will need to get started using your application.
2. Deploy the application on Rstudio's shiny server.
3. Share the application link by pasting it into the text box below.
4. Share your server.R and ui.R code on github.

The application must include the following:

- Some form of input (widget: textbox, radio button, checkbox, ...).
- Some operation on the ui input in sever.R.
- Some reactive output displayed as a result of server calculations.
- You must also include enough documentation so that a novice user could use your application.
- The documentation should be at the Shiny website itself. Do not post to an external link.

The Shiny application in question is entirely up to you. However, if you're having trouble coming up with ideas, you could start from the simple prediction algorithm done in class and build a new algorithm on one of the R datasets packages. Please make the package simple for the end user, so that they don't need a lot of your prerequisite knowledge to evaluate your application. You should emphasize a simple project given the short time frame. 

**Description of this Shiny application**

This shiny application will allow users to have a prediction of the MPG relative to cars based on the mtcars dataset. Users simply need to enter the gross horsepower, number of cylinders and weight of the cars on the side panel. The result will be displayed automatically on the main panel.

**Directions on how to visualize this Shiny application**

Download the Server.R and UI.R files and place them in a directory named 'mpgcar'. Open an R session and set the working directory to the folder that contains the directory 'mpgcar'. Then run the following commands:

````{r}
library(shiny)
runApp('mpgcar')
````