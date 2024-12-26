class DashboardController < ApplicationController
  before_action :logged_in_user
  layout 'dashboard'
  def index
  end
end
