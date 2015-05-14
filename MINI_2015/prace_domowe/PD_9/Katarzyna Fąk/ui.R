library(shiny)
library(PogromcyDanych)

shinyUI(fluidPage(
   titlePanel("Samochody"),
   sidebarLayout(
      sidebarPanel(

         h3("Jakiego auta szukasz?"),
         selectInput("marka", "Marka", levels(auta2012$Marka), multiple=TRUE),
         uiOutput("model"),
         uiOutput("cena"),
         uiOutput("rok"),
         checkboxGroupInput("paliwo", "Rodzaj paliwa", list(benzyna="benzyna",
                                                            benzynaLPG="benzyna+LPG",
                                                            etanol="etanol",
                                                            hybryda="hybryda",
                                                            elektryczny="naped elektryczny",
                                                            diesel="olej napedowy (diesel)"),
                            list(benzyna="benzyna",
                                 benzynaLPG="benzyna+LPG",
                                 etanol="etanol",
                                 hybryda="hybryda",
                                 elektryczny="naped elektryczny",
                                 diesel="olej napedowy (diesel)")),
         checkboxInput("uszkodzony", "Czy uszkodzony?"),
         uiOutput("kolor"),
         numericInput("przebieg","Maksymalny przebieg w km", 
                      value=max(auta2012$Przebieg.w.km[!is.na(auta2012$Przebieg.w.km)]),
                      min=min(auta2012$Przebieg.w.km[!is.na(auta2012$Przebieg.w.km)]), 
                      max=max(auta2012$Przebieg.w.km[!is.na(auta2012$Przebieg.w.km)])),
         textInput("wyposazenie", "Wazny element wyposazenia (po spacjach):")
         
      ),
      mainPanel(
#          tabsetPanel(
#             tabPanel("Liczby", 
                     tableOutput("tabela")
#             ),
#             tabPanel("Obrazki",
#                      plotOutput("obrazki",width=1000)
#             )
#          )
      )
   )
)
)
         
         
         #selectInput("marka","Marka",levels(auta$Marka), selected="Zastawa", multiple=TRUE),
#          uiOutput("markaInput"),
#          uiOutput("modelInput")
         #          uiOutput("cena"),
         #          ,
         #          dateRangeInput("data", label = "Podaj zakres dat:",
         #                        format="yyyy-mm-dd", separator = "-",
         #                        start = min(strptime(auta$Rok.produkcji, "%Y-%m-%d")),
         #                        end = max(strptime(auta$Rok.produkcji, "%Y-%m-%d"))),
         #          checkboxGroupInput("paliwo", "Rodzaj paliwa",
         #                             list(diesel="diesel",
         #                                  benzyna="benzyna",
         #                                  benzynaLPG="benzyna+LPG",
         #                                  etanol="etanol",
         #                                  hybryda="hybryda",
         #                                  napedElektryczny="naped elektryczny",
         #                                  bezroznicy="bez roznicy")
         #                             )
#       ),
      
      
#       mainPanel(
#          p("Dane dotyczące wybranego serialu:"),
#          br(),
#          tabsetPanel(
#             tabPanel("Tabela", tableOutput("tabela")),
#             tabPanel("Boxplot", plotOutput("boxplot", width = 500)),
#             tabPanel("Tabela", plotOutput("tabela", width = 500)),
#             tabPanel("Boxplot", verbatimTextOutput("podsumowanie")),
#             tabPanel("Tabela", tableOutput("tabela"))
#          )
#       )
#    )
# ))
