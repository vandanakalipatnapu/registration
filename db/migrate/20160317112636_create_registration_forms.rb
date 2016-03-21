class CreateRegistrationForms < ActiveRecord::Migration
  def change
    create_table :registration_forms do |t|
      t.string :name
      t.string :email
      t.string :rollno
      t.integer :phno
      t.string :address
      t.string :password

  
      t.timestamps null: false
    end
  end
end
