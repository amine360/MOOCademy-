class MoosController < ApplicationController

    def index

        @moo = Moo.all

    end

    def new

        @moo = Moo.new

    end

    def create

        @moo = Moo.create(moo_params)

        redirect_to moo_path(@moo.id)
      
    end

    def show

        @moo = Moo.find(params[:id])

    end
    
    def edit

        @moo = Moo.find(params[:id])

    end
    
    def update

        @moo = Moo.find(params[:id])

        @moo.update(moo_params)

        redirect_to moo_path(@moo.id)

    end
    
    def destroy

        @moo = Moo.find(params[:id])

        @moo.destroy

        redirect_to moos_path

    end

    private

    def moo_params

        params.require(:moo).permit(:classes, :description, :lessons, :content)

    end

end