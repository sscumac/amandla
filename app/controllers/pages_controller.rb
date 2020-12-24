class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :account ]

  def home
  end

  def account
    @user = current_user
    # raise
  end
end
