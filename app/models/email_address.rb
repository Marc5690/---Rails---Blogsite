class EmailAddress < ApplicationRecord

	validates :email, :presence => true, format: { with: URI::MailTo::EMAIL_REGEXP } 
	validates :name, :presence => true

	

end
