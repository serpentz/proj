require 'json'
require 'rest-client'
require 'pry'

require_relative "../config/environment"

dir = Pathname.new(Dir.pwd)
file = File.read(dir.to_s+'/app/all_assignments.json')

def get_all_assign(file)
 	JSON.parse(file).each do |item|	
 		name = item["name"]
		fork_url = item["forks_url"]
		# binding.pry
		assignment = Assignment.find_or_create_by(name: name)
			

		make_done_assignments(assignment, fork_url)
		
	end 
end

def make_done_assignments(assignment, fork_url )

	str = "?client_id=eea9ac2d03723dff52e5?client_secret=822b7779568c4ba7a3425c2a76cc8ee49f6f34f3"
	
url = "https://jlkasdfsfdjlk.000webhostapp.com/get_user.php?url="

begin
	RestClient.get(fork_url , {params: {client_id: "eea9ac2d03723dff52e5", client_secret: '822b7779568c4ba7a3425c2a76cc8ee49f6f34f3'}}){ |response, request, result, &block|
	  case response.code
		  when 200
			    JSON.parse(response.body).each do |item|

					github_username = item["owner"]["login"]

					student = Student.find_or_create_by(name: github_username)

					PullRequest.find_or_create_by(student_id: student.id, assignment_id: assignment.id)
					
				end
		  else
		  	# binding.pry
		    response.return!(&block)
		  end
		}
	rescue => e 
		puts fork_url + " is a private repo"
	end
end

# get_all_assign(file)


