class Addphoneandemail < ActiveRecord::Migration
  def change
  	add_column :phonenumbers, :contact_id, :integer
  	add_column :emails, :contact_id, :integer
  end
end
