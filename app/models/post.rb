class Post < ApplicationRecord
	#validates :title, presence:true, length: {minimum: 5}
	#validates :body, presence:true
	def self.search(search)
		if search
			where('Category LIKE ?', '%#{search}#')
		else
			unscoped
		end
	end
end
