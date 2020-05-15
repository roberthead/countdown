class NamesController < ApplicationController
  def create
    person = Name.new(
      first_name: name_params[:first_name]
    )
    person.save
    redirect_to root_path(params: {name_id: person.id})
  end

  private

  def name_params
    params.require(:name).permit(:first_name)
  end
end
