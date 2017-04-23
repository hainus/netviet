class CreatePortfolios < ActiveRecord::Migration[5.0]
  def change
    create_table :portfolios do |t|
      t.string   :name
      t.integer  :catgory
      t.string   "small_image_file_name"
      t.string   "small_image_content_type"
      t.integer  "small_image_file_size"
      t.datetime "small_image_updated_at"
      t.string   "large_image_file_name"
      t.string   "large_image_content_type"
      t.integer  "large_image_file_size"
      t.datetime "large_image_updated_at"
      t.string   "pdf_file_name"
      t.string   "pdf_content_type"
      t.integer  "pdf_file_size"
      t.datetime "pdf_updated_at"
      t.timestamps
    end
  end
end
