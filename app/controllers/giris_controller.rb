class GirisController < ApplicationController
  def index
    if current_user
      redirect_to borcs_url 
    end
  end
end