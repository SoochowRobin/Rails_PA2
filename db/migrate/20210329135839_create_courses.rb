class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :code
      t.string :segment
      t.string :segment_id
      t.string :description

      t.timestamps
    end
  end
end
