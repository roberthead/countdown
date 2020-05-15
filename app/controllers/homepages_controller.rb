class HomepagesController < ApplicationController
  def show
    @name = Name.find_by(id: params[:name_id])
  end
end
