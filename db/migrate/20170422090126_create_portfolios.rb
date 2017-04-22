class CreatePortfolios < ActiveRecord::Migration[5.0]
  def change
    create_table :portfolios do |t|
      t.integer :type
      t.string :type_name
      t.integer :category
      t.string :category_name
      t.string   "image_1_file_name"
      t.string   "image_1_content_type"
      t.integer  "image_1_file_size"
      t.datetime "image_1_updated_at"
      t.string   "image_2_file_name"
      t.string   "image_2_content_type"
      t.integer  "image_2_file_size"
      t.datetime "image_2_updated_at"
      t.string   "pdf_file_name"
      t.string   "pdf_content_type"
      t.integer  "pdf_file_size"
      t.datetime "pdf_updated_at"
      t.timestamps
    end
  end
end
