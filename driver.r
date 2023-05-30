# driver
library(quarto)

event_teams <- c(148, 2714, 3005, 3310, 4153, 4192, 4206, 4251, 4641, 5411, 
                 5431, 5613, 6369, 6526, 6672, 6974, 7119, 7271, 7321, 7503, 
                 7506, 7534, 7535, 7540, 8528, 8749, 8816, 8858, 9080, 
                 9088, 9105, 9128, 9156, 9299)

for (i in 1:length(event_teams)){
    team <- event_teams[i]
    quarto_render("report_generator.qmd", execute_params = list(team = team),
                  output_file = paste0(as.character(team), ".html")
                  )
}

ex_team <- 2714
quarto_render("report_generator.qmd", 
              output_file = paste0(as.character(ex_team), ".html"), 
              execute_params = list(team = ex_team))
