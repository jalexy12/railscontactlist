class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
    	t.text :name
    	t.text :address
    end
  end
end
