class ContactsController < ApplicationController
	  def index
	  		@contacts = Contact.how_many_contacts(10)
	  		if @contacts.empty?
	  			render 'no_contacts_found'
	  		end
 	 	end
    def show
  		unless @contact = Project.find_by(id: params[:id])  
  		  render 'no_contacts_found'
    	end
  	end


end
