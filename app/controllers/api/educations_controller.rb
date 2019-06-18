class Api::EducationsController < ApplicationController

   def index
    @educations = Education.all
    render 'index.json.jbuilder'
  end

  def show
    @education = Education.find(params[:id])
    render 'show.json.jbuilder'
  end
end
