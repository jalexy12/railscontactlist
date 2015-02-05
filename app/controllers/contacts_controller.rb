class ContactsController < ApplicationController
	  def index
	  		@contacts = Contact.how_many_contacts(10)
	  		if @contacts.empty?
	  			render 'no_contacts_found'
	  		end
 	 	end
    def show
  		unless @contact = Contact.find_by(id: params[:id])  
  		  render 'no_contacts_found'
    	end
  	end

	def new
		@contact = Contact.new
		@number = @contact.phonenumbers.new
		@email = @contact.emails.new
	end

  def letterindex
    @contacts = Contact.find_by_letter(params[:letter])
    
  end
  	

  	def edit
  	end

  	def create
  	end

  	def update
  	end


end
