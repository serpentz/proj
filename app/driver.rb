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
################################################################################# 
1. Rank students based on Pull Requests 					#
2. Get all Pull Requests for a specific user 					#
3. Get same info for all other mods (2,4,5) (coming soon) 			#
4. Get Person with the most work done in all mods (coming soon) 		#
5. exit										#
################################################################################# 
			TEXT
	end

def play1
	 hash = PullRequest.make_ranks
	 array = hash.sort_by { |key, age| age }
	 array.reverse.each do |value|
	 	puts "student #{value[0]} has completed #{value[1]}" 
	 end 
end

def play2
	puts "please enter the github username of the student :"
	name = gets.chomp
	stud = Student.find_by(name: name)

	while stud == nil
		puts "please enter a valid github username of the student :"

		stud = Student.find_by(name: gets.chomp)
	end

	stud.get_all_pull_requests.each do |i|
		puts i.name
	end

	 
end

def run(int)
	case int
			when 1
			 play1
			when 2
			 play2
			when 3
			 puts "playing #{int}"
			when 4
			 puts "playing #{int}"
			when 5
			 puts "goodbye"
		else
			puts "please enter a valid number (1,2,3,4,5)"
		end
end



welcome_screen
	print_options
input = gets.to_i


while(input!=5)
	print_options
	input = gets.to_i
	run(input)
end


			
			




# PullRequest.make_ranks