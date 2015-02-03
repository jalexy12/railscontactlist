class Contact < ActiveRecord::Base
	has_many :phonenumbers
	has_many :emails
	def self.how_many_contacts(numcontacts)
		Contact.order(created_at: :desc).limit(numcontacts)
	end
end
