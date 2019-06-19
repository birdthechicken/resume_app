class Api::CapstonesController < ApplicationController
   before_action :authenticate_user, only: [:create, :update, :destroy]

   def index
    @capstones = Capstone.all
    render 'index.json.jbuilder'
  end

  def create
    if current_user
      @capstone = Capstone.new(
                                student_id: current_user.id,
                                name: params[:name],
                                description: params[:description],
                                url: params[:url],
                                screenshot: params[:screenshot]
                              )

      if capstone.save
        render 'show.json.jbuilder'
      else
        render json: {message: @capstone.errors.full_messages }
      end 
    else
      render json:[]
    end
  end

  def show
    @capstone = Capstone.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    if current_user
      @capstone = Capstone.find(params[:id])

      @capstone.name = params[:name] || @capstone.name
      @capstone.description = params[:description] || @capstone.description
      @capstone.url = params[:url] || @capstone.url
      @capstone.screenshot = params[:screenshot] || @capstone.screenshot

      if @capstone.save 
        render 'show.json.jbuilder' 
      else 
        render json: {message: @capstone.errors.full_messages}, status: :unprocessable_entity
      end 
    else
      render json:[]
    end
  end

  def destroy
    if current_user
      @capstone = Capstone.find(params[:id])
      @capstone.destroy
      render json: {message: "Successfully deleted"}
    else
      render json:[]
    end
  end
end
