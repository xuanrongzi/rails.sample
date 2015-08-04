class User < ActiveRecord::Base
	validates :name, presence:true,
					length: {minimum:6,maximum:20},
					uniqueness: true
					
	validates :email, presence:true, 
					format: /@/,
					uniqueness: true
					
	validates :password, presence:true,
					length: {minimum: 6}

end
