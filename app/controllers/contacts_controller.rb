class ContactsController < ApplicationController
	  def index
	  		@contacts = Contact.all
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
    @letter = params[:letter].slice!(0)
    @contacts = Contact.find_by_letter(@letter)
   
  end
  	

  	def edit
  	end

  	def create
      @contact = Contact.new(contact_params)
      @email = @contact.emails.build(email_params)
      @number = @contact.phonenumbers.build(number_params)
      if @contact.save && @number.save && @email.save
        redirect_to action: "index", controller: "contacts"
      else
        render "new"
      end
  	end

  	def update
  	end
    private

  def contact_params
    params.require(:contact).permit(:name, :address, phonenumber: [:phonenumber], email:)
  end
  def number_params
    params.require(:phonenumber).permit(:phonenumber)
  end
  def email_params
    params.require(:email).permit(:email)
  end


end
