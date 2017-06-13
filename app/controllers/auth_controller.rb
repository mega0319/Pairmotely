class AuthController < ApplicationController

  def create
      # byebug
      user = User.find_by(username: params[:username])
      if user.present? && user.authenticate(params[:password])
        ## create a JWT token that encodes the user_id and send that back as part of the response
        token = JWT.encode({user_id: user.id}, ENV["JWT_SECRET"], ENV["JWT_ALGORITHM"])
        # byebug
        render json: {user: user.username, user_id: user.id, play_chips: user.play_chips,  token: token}
      else
        render json: {error: "No user or password found"}
      end

    end
end
