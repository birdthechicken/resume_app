class Api::ExperiencesController < ApplicationController

   def index
    @experiences = Experience.all
    render 'index.json.jbuilder'
  end

  def show
    @experience = Experience.find(params[:id])
    render 'show.json.jbuilder'
  end
end
