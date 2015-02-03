class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
    	
    	t.text :email
    end
  end
end
