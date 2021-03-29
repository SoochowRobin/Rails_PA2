class CreateInstructors < ActiveRecord::Migration[6.1]
  def change
    create_table :instructors do |t|
      t.string :instructorId
      t.string :firstName
      t.string :middleName
      t.string :lastName
      t.string :email

      t.timestamps
    end
  end
end
