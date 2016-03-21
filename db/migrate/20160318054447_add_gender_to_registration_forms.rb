class AddGenderToRegistrationForms < ActiveRecord::Migration
  def change
    add_column :registration_forms, :gender, :string
  end
end
