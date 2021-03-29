class SessionsController < ApplicationController
    def destroy
        session[:user_id] = nil
        redirect_to :controller => 'starts', :action => 'index'
    end

    def new

    end 

    def create
        user = User.find_by(email: params[:email])
        if user.present? && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to :controller => 'homes', :action => 'index'
        else
            redirect_to :controller => 'sessions', :action => 'new'
        end
    end
end