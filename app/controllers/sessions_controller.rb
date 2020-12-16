class SessionsController < ApplicationController
    def index
        @sessions = Session.all
    end

    def show
        @session = Session.find(params[:id])
    end

    def new
        @session = Session.new
    end

    def create
        @session = Session.create(params.require(:session).permit(:time, :artist_id, :instrument_id))
        redirect_to @session.artist

    end

    def edit
        @session = Session.find(params[:id]) 
    end

    def update
        @session = Session.find(params[:id])
        @session.update 
    end

    def destroy
        @session = Session.find(params[:id])
        @session.destroy
        redirect_to sessions_path
    end
end
