module Api
    module V1
        class H1sController < ApplicationController

            def create
                h1 = H1.(slug: params[:slug])

            private
        end
    end
end