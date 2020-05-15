class NamesController < ApplicationController
  def show
    @name = Name.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    head :not_found
  end

  def create
    person = Name.create(name_params)
    redirect_to person
  end

  private

  def name_params
    params.require(:name).permit(:first_name)
  end
end
