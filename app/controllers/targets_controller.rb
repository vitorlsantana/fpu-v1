class TargetsController < ApplicationController

    before_action :set_target, only: [:show, :edit, :update, :destroy]

    skip_before_action :authenticate_user!, only: [:index, :show]
  
    def index
      @targets = Target.all
    end
  
    def new
      @target = Target.new
    end
  
    def create
      @target = Target.new(target_params)
      @target.save
  
      redirect_to targets_path(@target)
    end

    def show
      @target = Target.find(params[:id])
    end

    def edit
      @target = Target.find(params[:id])
    end
  
    def update
      if @target.update(target_params)
        @targets = Target.find(params[:id])
        @target.update(params[:target])
        redirect_to @targets, notice: 'As informações foram atualizadas.'
      else
        render :edit
      end
    end
  
    def destroy
      @target = Target.find(params[:id])
      @target.destroy
      # no need for app/views/restaurants/destroy.html.erb
      redirect_to targets_path
    end
  
    def mytargets
      @targets = Target.where(user_id: current_user)
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_target
      @target = Target.find(params[:id])
    end

    def target_params
      params.require(:target).permit(:name, :sexo, :cpf, :municipio, :uf, :email, :telefone)
    end

end
