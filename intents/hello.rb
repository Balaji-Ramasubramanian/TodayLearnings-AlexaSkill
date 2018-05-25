# Handle the Hello intent
intent "Hello" do
	# Welcome string
	welcome_string = "Welcome to Today learnings, I could give you the interesting and specific facts from Today I Learned subreddit. 
		Try asking like tell me a fact from today i learned"
	# Speak out the welcome string 
	ask(welcome_string, session_attributes: { previousResponse: "welcome_string" })
end


