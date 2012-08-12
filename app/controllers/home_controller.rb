class HomeController < ApplicationController
  def index
  end

  def get_data_version
    @version = Version.first
  end

end
