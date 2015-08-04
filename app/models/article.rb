class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	validates :title, presence: true,
					  length: { maximum: 25}
	
    validates :text, presence: true,
					  length: { minimum: 6}
					  
	validates :userID, presence: true					  
	
end
