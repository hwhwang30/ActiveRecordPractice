class CreateUsersTable < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :lname
  		t.string :fname
  	end
  end
end
