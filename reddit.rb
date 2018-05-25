require 'redditkit'

class RedditModule

	# URL of Reddit website.
	REDDIT_URL = 'https://www.reddit.com'
	#Initialize the client object for Reddit account
	def initialize
		@client = RedditKit::Client.new
		@client.api_endpoint = REDDIT_URL
		@client.sign_in(ENV["REDDIT_USERNAME"], ENV["REDDIT_PASSWORD"])
	end
	
	# Get the Today I Learned post from Reddit
	def get_til	
		# Get top 100 posts from TIL subreddit.
		posts = @client.links 'todayILearned', :category => :top, :time => :today, :limit => 100
		title = get_title(posts)
		title = replace_prefix(title)
	    puts title
	    title
	end

	# Fetch random post from posts and get the title from the post
	def get_title(posts)
		posts = posts.to_a
		random_post = posts[rand(100)].title # Get random post from TIL.
		title = random_post.downcase
		puts title
		title
	end

	# Remove the prefix like TIL, Til that, etc., form the title
	def replace_prefix(title)
		title =title.gsub("til that","")
		title =title.gsub("til of", "")
	    title =title.gsub("til","")
	    title =title.gsub("til,","")
	    title = title.strip.capitalize
	end


end
