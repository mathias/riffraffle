class PagesController < ApplicationController
  before_filter :authenticate_admin_user!

  def index
  end
end
