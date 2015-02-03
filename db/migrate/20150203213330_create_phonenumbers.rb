class CreatePhonenumbers < ActiveRecord::Migration
  def change
    create_table :phonenumbers do |t|
    
    	t.text :phonenumber
    end
  end
end
