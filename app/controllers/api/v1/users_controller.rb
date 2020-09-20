module Api
    module V1
        class UsersController < ApplicationController
            protect_from_forgery with: :null_session
            def index
                user = User.all 

                render json: UserSerializer.new(user).serialized_json
            end

            def show
                user = User.find_by(id: params[:id])
                options = {
                    include: [:friendships, :h1]
                }
                    render json: UserSerializer.new(user, options).serialized_json
            end

            def create
                user = User.new(user_params)

                if user.save
                    render json: UserSerializer.new(user).serialized_json
                else
                    render json: {error: user.errors.message }, status: 422
                end

            end

            private

            def user_params
                params.require(:user).permit(:name, :url, :short_url)
            end

        #    def options
        #         options = {}
        #         options[:include] = [:h1, :friendship]
        #         # @options ||= { include: %i[h1 friendship]} 
                
        #    end
        end

    end
end