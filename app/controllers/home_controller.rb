class HomeController < ApplicationController
  def index
    users = User.all
    @hash = Gmaps4rails.build_markers(users) do |user, marker|
      marker.lat DEFAULT_LATITUDE
      marker.lng DEFAULT_LOGITUDE
      marker.picture(
        url: '/assets/marker_orange.png',
        width: 30,
        height: 40
      )
    end
  end

  def download_pdf
    file_path = "#{Rails.root}/public/camera.pdf"
    send_file file_path, filename: "camera.pdf", type: 'application/pdf', disposition: 'inline'
  end
end
