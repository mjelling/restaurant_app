class PartiesController < ApplicationController
  include SessionsHelper

  before_filter :authenticate!

  def new
    @party = Party.new
  end

  def create
    _params = party_params.merge(user: current_user)

    party = Party.create _params
    redirect_to server_path
  end

  def destroy
  party = Party.find(params[:id])
  party.destroy
  redirect_to server_path
end

  private

  def party_params
    params.require(:party).permit(:name, :table_number)
  end
end
