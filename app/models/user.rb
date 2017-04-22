class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :portfolios
  has_attached_file :avatar, styles: { medium: "300x300>", thumb:  "100x100>", tiny: '32x32>' }, default_url: "user/default_image.png"

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
