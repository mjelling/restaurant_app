class PagesController < ApplicationController
  include SessionsHelper

  before_filter :authenticate_admin!, only: :admin
  before_filter :authenticate!, only: :server

  def admin
  end

  def server
    @parties = Party.where(user: current_user)
  end


end
