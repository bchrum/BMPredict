library(shiny)


shinyUI(fluidPage(

    titlePanel("Boston Marathon Winning Time Predictor"),

    sidebarLayout(
        sidebarPanel(
            selectInput("Temp",h4("Temperature at 10am"),
               c("39","40","41","42","43","44","45","46",
                 "47","48","49","50","51","52","53","54",
                 "55","56","57","58","59","60","61","62",
                 "63","64","65","66","67","68","69","70",
                 "71","72","73","74"),width='40%'),
            helpText("Select the temperature in degrees 
                     Fahrenheit at 10am on race day.  
                     There are a number of online weather
                     sites that can provide hourly temperature 
                     forecasts ahead of time."),
            selectInput("Wind",h4("Wind Effect at 10am"),
               c("Headwind","Neutral Wind","Tailwind"), width='50%'),
            helpText("'Headwind' is defined as wind > 10 mph 
                     from the NNE, NE, ENE, E or ESE direction.
                     'Tailwind' is defined as wind > 10 mph 
                     from the NNW, W, WSW, SW or SSW direction.
                     'Neutral Wind' is defined as wind from any 
                     other direction, or wind that is less than
                     10 mph from any direction.  Again, there 
                     are a number of online weather sites that 
                     can provide wind forecasts ahead of time, 
                     such as www.weatherunderground.com")),
        mainPanel(
            h6('Based on the last 14 Boston Marathons, a model 
               was created to predict the winning time given the 
               weather conditions on race day.  As values are 
               entered, the predicted winning time updates below.
               Note that the allowed temperature range is 39 - 74
               degrees.  These temperatures represent the range 
               over which this model has been defined.  If the 
               temperature is beyond this range, simply select 
               the lowest or highest available temperature as 
               applicable.'),
            h6(' '),
            h6(' '),
            h5('Based on your selections of a '), textOutput("W"), 
            h5(' and a temperature of '),textOutput("T"), 
            h5(' at 10am: '),
            h6(' '), 
            h3('Predicted winning time is '),
            verbatimTextOutput("prediction") ) ) ) )

 