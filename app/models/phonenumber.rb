class Phonenumber < ActiveRecord::Base
	belongs_to :contact
	validates :phonenumber, presence:true
end
