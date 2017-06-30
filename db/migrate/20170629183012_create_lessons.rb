class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.integer :course_id, :null => false
      t.string :name
      t.integer :number
      t.text :description
      t.timestamps
    end
  end
end
