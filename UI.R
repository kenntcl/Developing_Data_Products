library(shiny)
shinyUI(pageWithSidebar(
        headerPanel('Developing Data Products Course Project'),
        sidebarPanel(
                h3('Instructions'),
                p('Enter the gross horsepower, number of cylinders, and weight of your
                  car in the fields below. The predicted MPG will be shown on your right.'),
                h3('Please enter the predictors of MPG below.'),
                numericInput('hp', 'Gross horsepower:', 100, min = 50, max = 350, step = 10), # example of numeric input
                radioButtons('cyl', 'Number of cylinders:', c('4' = 4, '6' = 6, '8' = 8), selected = '4'), # example of radio button input
                numericInput('wt', 'Weight (lbs):', 3500, min = 1000, max = 5500, step = 100)
                ),
        mainPanel(
                h3('Predicted MPG'),
                h4('You have provided the below inputs:'),
                verbatimTextOutput("inputValues"),
                h4('This results in a prediction of the below MPG relative to cars based on the mtcars data set.'),
                verbatimTextOutput("prediction"),
                plotOutput('plots'),
                p(),
                h5('Note: The data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973-74 models).'),
                p(),
                h3('How to use the application:'),
                p(),
                h5('To use the application, simply enter the gross horsepower, number of cylinders and weight of your car in the fields provided on the side bar panel.'),
                h5('The result will be shown automatically on the main panel.')
        )
))