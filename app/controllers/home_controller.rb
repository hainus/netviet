class HomeController < ApplicationController
  def index
  end
  def download_pdf
    send_file(
      "#{Rails.root}/public/camera.pdf",
      filename: "camera.pdf",
      type: "application/pdf"
    )
  end
end
