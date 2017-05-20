class ResponsesController < ApplicationController
    before_action :authenticate_user!
    def willwake
        Response.create(user_id: current_user.id, post_id: params[:post_id])
        redirect_to :back
    end
end
