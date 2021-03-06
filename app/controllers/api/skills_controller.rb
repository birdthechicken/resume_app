class Api::SkillsController < ApplicationController
  before_action :authenticate_user, only: [:create, :update, :destroy]


   def index
    # @skills = Skill.all
    @skills = current_user.skills

    render 'index.json.jbuilder'
  end

  def create 
    @skill = Skill.new(
                              student_id: current_user.id,
                              skill_name: params[:skill_name]
                            )

    if @skill.save
      render 'show.json.jbuilder'
    else
      render json: {message: @skill.errors.full_messages }
    end 
  end

  def show
    @skill = Skill.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @skill = Skill.find(params[:id])
    if current_user.id == @skill.student_id 
      @skill.skill_name = params[:skill_name] || @skill.skill_name

      if @skill.save 
      render 'show.json.jbuilder' 
      else 
        render json: {message: @skill.errors.full_messages}, status: :unprocessable_entity
      end 
    else
      render json: []
    end
  end

  def destroy
    @skill = Skill.find(params[:id])
    if current_user.id == @skill.student_id 
      @skill.destroy
      render json: {message: "Successfully deleted"}
    else
      render json: [] 
    end
  end
end
