class Banner < ApplicationRecord
  belongs_to :user
  has_attached_file :image1, styles: { large: "1200x500>"}, default_url: ""
  has_attached_file :image2, styles: { large: "1200x500>"}, default_url: ""
  has_attached_file :image3, styles: { large: "1200x500>"}, default_url: ""
  validates_attachment_content_type [:image1, :image2, :image2], :content_type => /\Aimage\/.*\Z/
end
