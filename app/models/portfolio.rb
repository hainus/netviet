class Portfolio < ApplicationRecord
  belongs_to :user
  has_attached_file :small_image, styles: { medium: "300x300>", thumb:  "100x100>", tiny: '32x32>' }, default_url: ""
  has_attached_file :large_image, styles: { medium: "300x300>", thumb:  "100x100>", tiny: '32x32>' }, default_url: ""
  validates_attachment_content_type [:small_image, :large_image], :content_type => /\Aimage\/.*\Z/
  has_attached_file :pdf
  validates_attachment :pdf, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }

  # Enum
  enum catgory: {
    camera: 1,
    web: 2,
    network: 3,
    security: 4
  }

end
