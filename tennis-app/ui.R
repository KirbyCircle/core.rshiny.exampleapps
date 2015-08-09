shinyUI(fluidPage(titlePanel("Wednesday Ladies Tennis"), 
	
	sidebarLayout(sidebarPanel(fileInput("file1", 
		"Choose file to upload", accept = c(".csv")), 
		textOutput("text1")), 
		
		mainPanel(img(src = "clay1.jpg", 
		height = 450, width = 350), img(src = "clay2.jpg", 
		height = 450, width = 350)))))
