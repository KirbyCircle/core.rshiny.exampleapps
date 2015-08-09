shinyServer(function(input, output) {

	# input$file1 will be NULL initially. After the user selects
	# and uploads a file, it will be a data frame with 'name',
# 'size', 'type', and 'datapath' columns. The 'datapath'
# column will contain the local filenames where the data can
# be found.
filedata <- reactive({
    infile <- input$file1
    if (is.null(infile)){
      return(NULL)      
    }
    read.csv(infile$datapath)
    output$text1 <- renderText({
		regulars <- data[data[, 1] == "REG", 2]
	})

	output$text2 <- renderText({
		subs <- data[data[, 1] == "SUB", 2]
	})
    
  })

	
})
