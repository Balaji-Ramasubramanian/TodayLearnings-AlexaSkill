# Handle the LaunchRequest intent
intent "LaunchRequest" do
	welcome_string = "Welcome to Today learnings, I could give you the interesting and specific facts from Today I Learned subreddit. 
		Try asking like tell me a fact from today i learned"
		ask( welcome_string, session_attributes: { previousResponse: welcome_string })
end

# Handle RepeatIntent intent
intent "AMAZON.RepeatIntent" do
	response = request.session_attributes["previousResponse"] 
	ask(response, session_attributes:{ previousResponse: response })
end

# Handle FallbackIntent intent
intent "AMAZON.FallbackIntent" do
	response = "Sorry, I cant understand that. Try asking like, Tell me a fact from today I learned"
  	ask(response, session_attributes:{ previousResponse: response })
end

# Handle SessionEndRequest intent
intent "SessionEndedRequest" do
  respond("Goodbye!")
end

# Handle HelpIntent intent
intent "AMAZON.HelpIntent" do
	help_string = "I am Today learnings, I could give you the interesting and specific facts from Today I Learned subreddit. 
		Try asking like tell me a fact from today i learned or what is new in today i learned"
	ask(help_string, session_attributes: { previousResponse: help_string })
end