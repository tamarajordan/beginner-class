class CreateRecommendations < ActiveRecord::Migration[5.1]
  def change
    create_table :recommendations do |t|
      t.integer :course_id, :null => false
      t.string :name
      t.string :description
      t.string :photo
      t.text :content
      t.timestamps
    end
  end
end
