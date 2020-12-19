class SessionsController < ApplicationController
    def new
        
    end

    def create
        # byebug
        if !!params[:name] && params[:name].length > 0
        # byebug
            session[:name] = params[:name]
            redirect_to '/'
        else
            redirect_to login_path
        end
    end

    def destroy
        session.delete :name
        redirect_to login_path
    end
end