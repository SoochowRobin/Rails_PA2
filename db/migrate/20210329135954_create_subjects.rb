class CreateSubjects < ActiveRecord::Migration[6.1]
  def change
    create_table :subjects do |t|
      t.string :subjectId
      t.string :subjectName
      t.string :segmentId
      t.string :segmentName

      t.timestamps
    end
  end
end
