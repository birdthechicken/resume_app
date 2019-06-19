class Api::ExperiencesController < ApplicationController
  before_action :authenticate_user, only: [:create, :update, :destroy]


   def index
    @experiences = Experience.all
    render 'index.json.jbuilder'
  end

  def create
    if current_user
      @experience = Experience.new(
                                student_id: current_user.id,
                                start_date: params[:start_date],
                                end_date: params[:end_date],
                                job_title: params[:job_title],
                                company_name: params[:company_name],
                                details: params[:details]
                              )

      if experience.save
        render 'show.json.jbuilder'
      else
        render json: {message: @experience.errors.full_messages }
      end 
    else
      render json:[]
    end
  end

  def show
    @experience = Experience.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    if current_user
      @experience = Experience.find(params[:id])

      @experience.start_date = params[:start_date] || @experience.start_date
      @experience.end_date = params[:end_date] || @experience.end_date
      @experience.job_title = params[:job_title] || @experience.job_title
      @experience.company_nam = params[:company_nam] || @experience.company_nam
      @experience.details = params[:details] || @experience.details

      if @experience.save 
      render 'show.json.jbuilder' 
      else 
        render json: {message: @experience.errors.full_messages}, status: :unprocessable_entity
      end 
    else
      render json:[]
    end
  end

  def destroy
    if current_user
      @experience = Experience.find(params[:id])
      @experience.destroy
      render json: {message: "Successfully deleted"}
    else
      render json:[]
    end
  end
end
