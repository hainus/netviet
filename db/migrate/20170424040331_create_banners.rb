class CreateBanners < ActiveRecord::Migration[5.0]
  def change
    create_table :banners do |t|
      t.string   "image1_file_name"
      t.string   "image1_content_type"
      t.integer  "image1_file_size"
      t.datetime "image1_updated_at"
      t.string   "image2_file_name"
      t.string   "image2_content_type"
      t.integer  "image2_file_size"
      t.datetime "image2_updated_at"
      t.string   "image3_file_name"
      t.string   "image3_content_type"
      t.integer  "image3_file_size"
      t.datetime "image3_updated_at"
      t.timestamps
    end
  end
end
