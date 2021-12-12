class WelcomeController < ApplicationController
  def index
    @admins = User.all.where(role_id: "3")
  end
end
