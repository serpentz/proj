require_relative "../config/environment.rb"

	def welcome_screen

		puts <<-TEXT
##################################################################################
#   ________    ________      ________      ________      ___      _________     #
#  |\\   __  \\  |\\   __  \\    |\\   __  \\    |\\   ____\\    |\\  \\    |\\___   ___\\   #
#  \\ \\  \\|\\  \\ \\ \\  \\|\\  \\   \\ \\  \\|\\  \\   \\ \\  \\___|    \\ \\  \\   \\|___ \\  \\_|   #
#   \\ \\   ____\\ \\ \\   _  _\\   \\ \\  \\\\\\  \\   \\ \\  \\  ___   \\ \\  \\       \\ \\  \\    #
#    \\ \\  \\___|  \\ \\  \\\\  \\|   \\ \\  \\\\\\  \\   \\ \\  \\|\\  \\   \\ \\  \\       \\ \\  \\   # 
#     \\ \\__\\      \\ \\__\\\\ _\\    \\ \\_______\\   \\ \\_______\\   \\ \\__\\       \\ \\__\\  #	
#      \\|__|       \\|__|\\|__|    \\|_______|    \\|_______|    \\|__|        \\|__|  #
# 	                                                                         #
#################################################################################                                                                           
		TEXT
	end

		def print_options
			print <<-TEXT
				1. Rank students based on Pull Requests
				2. Get all Pull Requests for a specific user
				3. Get same info for all other mods
				4. TBD
			TEXT

		end





PullRequest.make_ranks