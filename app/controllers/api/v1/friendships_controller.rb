module Api
    module V1
        class FriendshipsController < ApplicationController
        protect_from_forgery with: :null_session

    def create 
        new_friendships = Friendship.create_reciprocal_for_ids(params[:user_id],params[:friend_id])

        render json: FriendshipSerializer.new(new_friendships).serialized_json
    end
    private
  end
    end
end