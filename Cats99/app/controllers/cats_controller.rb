class CatsController < ApplicationController

    def index
        @cats = Cat.all
        render :index
    end

    def show
        @cat = Cat.find_by(id: params[:id])

        if @cat
            render :show
        else
            render plain: 'No such Cat, fool', status: 404
        end
    end
   
    def new
        @colors = Cat.colors
        @cat = Cat.new
        render :new
    end

    def create
        @cat = Cat.new(cat_params)
        if @cat.save
            render :show
        else
            @errors = @cat.errors.full_messages
            render :new
        end
    end
    
    private

    def cat_params
        params.require(:cat).permit(:name, :birth_date, :color, :sex)
    end
end