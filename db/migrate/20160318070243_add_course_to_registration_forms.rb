class AddCourseToRegistrationForms < ActiveRecord::Migration
  def change
    add_column :registration_forms, :course, :string
  end
end
