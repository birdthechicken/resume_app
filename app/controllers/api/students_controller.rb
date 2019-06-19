class Api::StudentsController < ApplicationController
  before_action :authenticate_user, only: [:update]

  def index
    @students = Student.all
    render 'index.json.jbuilder'
  end

  def show
    @student = Student.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update  
    @student = Student.find(params[:id])
    if current_user.id == @student.student_id 
      @student.first_name = params[:first_name] || @student.first_name
      @student.last_name = params[:last_name] || @student.last_name
      @student.email = params[:email] || @student.email
      @student.phone_number = params[:phone_number] || @student.phone_number
      @student.short_bio = params[:short_bio] || @student.short_bio
      @student.linked_in_url = params[:linked_in_url] || @student.linked_in_url
      @student.twitter_handle = params[:twitter_handle] || @student.twitter_handle
      @student.personal_blog = params[:personal_blog] || @student.personal_blog
      @student.website_url = params[:website_url] || @student.website_url
      @student.resume_url = params[:resume_url] || @student.resume_url
      @student.github_url = params[:github_url] || @student.github_url
      @student.photo = params[:photo] || @student.photo

      if @student.save
        render 'show.json.jbuilder'
      else
        render json: {message: @students.errors.full_messages}, status: :unprocessable_entity
      end
    else
      render json: []
    end
  end
end
