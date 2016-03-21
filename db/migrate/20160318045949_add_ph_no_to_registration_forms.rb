class AddPhNoToRegistrationForms < ActiveRecord::Migration
  def change
    add_column :registration_forms, :phno, :string
  end
end
