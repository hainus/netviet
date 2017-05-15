class Banner < ApplicationRecord
  belongs_to :user

  has_attached_file :image1, styles: { large: "1200x500>"}, default_url: ""
  has_attached_file :image2, styles: { large: "1200x500>"}, default_url: ""
  has_attached_file :image3, styles: { large: "1200x500>"}, default_url: ""

  process_in_background :image1, processing_image_url: "/assets/about.jpg"
  process_in_background :image2, processing_image_url: "/assets/about.jpg"
  process_in_background :image3, processing_image_url: "/assets/about.jpg"

  validates_attachment_content_type [:image1, :image2, :image2], :content_type => /\Aimage\/.*\Z/
end
