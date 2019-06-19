class Api::SessionsController < ApplicationController
  def create
     student = Student.find_by(email: params[:email])
     if student && student.authenticate(params[:password])
       jwt = JWT.encode(
         {
           student_id: student.id, # the data to encode
           exp: 24.hours.from_now.to_i # the expiration time
         },
         Rails.application.secrets.fetch(:secret_key_base), # the secret key
         'HS256' # the encryption algorithm
       )
       render json: {jwt: jwt, email: student.email, user_id: student.id}, status: :created
     else
       render json: {}, status: :unauthorized
     end
   end
end
