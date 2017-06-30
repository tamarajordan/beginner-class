class CreateMarketingContents < ActiveRecord::Migration[5.1]
  def change
    create_table :marketing_contents do |t|
      t.integer :course_id, :null => false
      t.string :intro_icon_1
      t.string :intro_title_1
      t.text :intro_content_1
      t.string :intro_icon_2
      t.string :intro_title_2
      t.text :intro_content_2
      t.string :description_title
      t.string :description_photo
      t.text :description_content
      t.string :background_photo_1
      t.string :feature_title_1
      t.text :feature_content_1
      t.string :feature_title_2
      t.text :feature_content_2
      t.string :feature_title_3
      t.text :feature_content_3
      t.string :background_photo_2
      t.timestamps
    end
  end
end
