class Portfolio < ApplicationRecord
  belongs_to :user
  has_attached_file :image_1, styles: { medium: "300x300>", thumb:  "100x100>", tiny: '32x32>' }, default_url: ""
  has_attached_file :image_2, styles: { medium: "300x300>", thumb:  "100x100>", tiny: '32x32>' }, default_url: ""
  validates_attachment_content_type [:image_1, :image_2], :content_type => /\Aimage\/.*\Z/
  has_attached_file :pdf
  validates_attachment :pdf, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
end
