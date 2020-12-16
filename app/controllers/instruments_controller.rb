class InstrumentsController < ApplicationController
    def index
        @instruments = Instrument.all
    end

    def show
        @instrument = Instrument.find(params[:id])
    end

    def new
        @instrument = Instrument.new
    end

    def create

    end

    def edit
        @instrument = Instrument.find(params[:id]) 
    end

    def update
        @instrument = Instrument.find(params[:id])
        @instrument.update 
    end

    def destroy
        @instrument = Instrument.find(params[:id])
        @instrument.destroy
        #reduirect_to sessions_path
    end
end
