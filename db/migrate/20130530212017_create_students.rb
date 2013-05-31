class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string "name" ,:limit => 40
      t.string "username", :limit => 30, :null => false
      t.string "password", :limit => 40
      t.string "std"
      t.string "section"   
      t.string "email", :default => "", :null => false
      t.integer "mobile",:limit => 10             
      t.timestamps
    end
  end
end
