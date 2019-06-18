class Api::SkillsController < ApplicationController

   def index
    @skills = Skill.all
    render 'index.json.jbuilder'
  end

  def show
    @skill = Skill.find(params[:id])
    render 'show.json.jbuilder'
  end
end
