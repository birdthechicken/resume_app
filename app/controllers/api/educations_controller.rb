class Api::EducationsController < ApplicationController

   def index
    @educations = Education.all
    render 'index.json.jbuilder'
  end

    def create
    @education = Education.new(
                              student_id: current_user.id,
                              start_date: params[:start_date],
                              end_date: params[:end_date],
                              degree: params[:degree],
                              schooling: params[:schooling],
                              details: params[:details]
                            )

    if education.save
      render 'show.json.jbuilder'
    else
      render json: {message: @education.errors.full_messages }
    end 
  end

  def show
    @education = Education.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @education = Education.find(params[:id])

    @education.start_date = params[:start_date] || @education.start_date
    @education.end_date = params[:end_date] || @education.end_date
    @education.degree = params[:degree] || @education.degree
    @education.schooling = params[:schooling] || @education.schooling
    @education.details = params[:details] || @education.details

    if @education.save 
    render 'show.json.jbuilder' 
    else 
      render json: {message: @education.errors.full_messages}, status: :unprocessable_entity
    end 

  def destroy
    @education = Education.find(params[:id])
    @education.destroy
    render json: {message: "Successfully deleted"}
  end
end
