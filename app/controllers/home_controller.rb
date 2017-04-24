class HomeController < ApplicationController
  def index
    @portfolios = Portfolio.all
    @banner_images = Banner.first
  end
  def download_pdf
    file_path = "#{Rails.root}/public/camera.pdf"
    send_file file_path, filename: "camera.pdf", type: 'application/pdf', disposition: 'inline'
  end
end
