class HomeController < ApplicationController
	skip_before_action :authenticate_user!, :only => [:index]
  def index
  end
  def after_sign_in_path_for(resource)
	  dashboard_index_path
	end
end
