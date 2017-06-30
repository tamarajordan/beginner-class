class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :instructor
      t.string :name
      t.integer :price
      t.column :genre, :integer
      t.column :status, :integer, default: 0
      t.timestamps
    end
  end
end
