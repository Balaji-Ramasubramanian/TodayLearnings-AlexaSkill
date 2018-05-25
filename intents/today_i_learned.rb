
# Handle Today_I_Learned intent
intent "Today_I_Learned" do
	
	# Calls the method defined in RedditModule to get random fact from TIL subreddit.
	fact = RedditModule.new.get_til
	# Tells the fact and store the fact in Session attribute.
	ask("#{fact}", session_attributes: { previousResponse: fact })

end
