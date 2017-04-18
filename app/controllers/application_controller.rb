class ApplicationController < ActionController::API
  ##Credits:General Assembly WDIR authentication lesson/tutorial
  # https://generalassemb.ly/education/web-development-immersive

  # checks to see if the user is looged in
  def authenticate
    render json: {status: 401, message: "unauthorized"} unless decode_token(bearer_token)
  end

  # checks that user accessing the data matches current user
  def authorize
    puts "**********  current user  app controller *****************"
    puts @current_user
    puts current_user
    puts '*********************************************************'
    # NOTE: to self: current_user method is called, it then decodes the JSON WEB Token,
    # grabs the user_id, and uses that id to make a query to find the user that matches that id and returns it. Then on that returned user we do a .id to get the id and compare it to the parameter :id

   render json: {status: 401, message: "unauthorized"} unless current_user.id == params[:id].to_i
  end

  def bearer_token
    pattern = /^Bearer /
    header  = request.env["HTTP_AUTHORIZATION"] # <= env
    header.gsub(pattern, '') if header && header.match(pattern)
  end

  def current_user
    return if !bearer_token

    decoded_jwt = decode_token(bearer_token)

    puts '****** decoded jwt *************************'
    puts decoded_jwt
    puts decoded_jwt["user"]
    puts decoded_jwt["user"]["id"]
    puts '********************************************'

    @current_user ||= User.find(decoded_jwt["user"]["id"])

  end

  def decode_token(token)
    @token ||= JWT.decode(token, nil, false)[0] # this will error if the token is invalid or expired
  rescue
    render json: {status: 401, message: 'invalid or expired token'}
  end
end
