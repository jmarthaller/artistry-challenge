class ArtistsController < ApplicationController
    def index
        @artists = Artist.all
    end

    def show
        @artist = Artist.find(params[:id])
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.new(params.require(:artist).permit(:name, :age, :title))

        if @artist.valid?
            @artist.save
            redirect_to artist_path(@artist)
        else
            flash[:error] = @artist.errors.full_messages 
            render :new
        end
        
    end

    def edit
        @artist = Artist.find(params[:id]) 
    end

    def update
        @artist = Artist.find(params[:id])
        @artist.update 
    end

    def destroy
        @artist = Artist.find(params[:id])
        @artist.destroy
        redirect_to sessions_path
    end
end
