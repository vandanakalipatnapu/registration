class AddQualificationToRegistrationForms < ActiveRecord::Migration
  def change
    add_column :registration_forms, :qualification, :string
  end
end
