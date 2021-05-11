class InscricaosController < ApplicationController

    def create
        @inscricao = Inscricao.new(inscricao_params)
        @target = Target.find(params[:target_id])
        @inscricao.target = @target
        @inscricao.user = current_user
        @inscicao.save
        redirect_to target_path(@target)
    end
    
    private

    def inscricao_params
      params.require(:inscricao).permit()
    end    

end
