class HomeController < ApplicationController
  before_filter :authenticate_user!, :except => [:get_data_version]
  def index
  end

  def get_data_version
    @version = Version.first
  end

end
