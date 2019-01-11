class AccountsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user_email = current_user.email
  end
end
