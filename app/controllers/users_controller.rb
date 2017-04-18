# Credits: General Assembly lesson on authorization with rails
class UsersController < ApplicationController
  before_action :authorize, except: [:login, :create]

  def create
    user = User.new(user_params)

    if user.save
      render json: {status: 200, message: 'ok'}
    else
      render json: {status: 422, user: user.errors}
    end
  end

  def login
    user = User.find_by(email: params[:user][:email])

    if user && user.authenticate(params[:user][:password])
      token = token(user.id, user.email)
      render json: {status: 201, user: user, token: token}
    else
      render json: {status: 401, message: "unauthorized"}
    end
  end

  def show
    render json: {status: 200, user: current_user}
  end

  private

   def token(id, email)
     JWT.encode(payload(id, email), 'thisismysecret', 'HS256')
   end

   def payload(id, email)
    #  JWT- jason web token: standard for sending information securely as a JSON object.
     # reference https://en.wikipedia.org/wiki/JSON_Web_Token
     # Issuer (iss) - identifies principal that issued the JWT
     # Issued at (iat) - The "iat" (issued at) claim identifies the time at which the JWT was issued.
     {
       exp: (Time.now + 15.minutes).to_i,
       iat: Time.now.to_i,
       iss: 'car-rental-app',
       user: {
         id: id,
         email: email
       }
     }
   end

   def user_params
     params.required(:user).permit(:name, :email, :password)
   end
end
