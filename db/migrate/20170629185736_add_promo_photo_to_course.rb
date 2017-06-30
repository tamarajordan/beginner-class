class AddPromoPhotoToCourse < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :promo_photo, :string
  end
end
