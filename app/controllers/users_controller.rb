class UsersController < ApplicationController
  def show; end

  def external; end

  def index
    redirect_to current_user if signed_in?
  end
end
