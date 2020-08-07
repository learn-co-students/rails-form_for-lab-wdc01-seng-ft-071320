class SchoolClassesController < ApplicationController

    def show
        id = params[:id]
        @school_class = SchoolClass.find(id)
    end

    def new
        @school_class = SchoolClass.new
    end

    def create
        @school_class = SchoolClass.create(sc_params)
        redirect_to school_class_path(@school_class)
    end

    def edit
        @school_class = SchoolClass.find(params[:id])
    end

    def update
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(sc_params)
        redirect_to school_class_path(@school_class)
    end

    private

    def sc_params
        params.require(:school_class).permit(:title, :room_number)
    end


end
