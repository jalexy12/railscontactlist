class Contact < ActiveRecord::Base
	has_many :phonenumbers
	has_many :emails
	accepts_nested_attributes_for :phonenumbers, :emails
	
	def self.how_many_contacts(numcontacts)
		Contact.limit(numcontacts)
	end

	def self.find_by_letter(letter)
		Contact.where("name LIKE ?", "#{letter}%")
	end
end
