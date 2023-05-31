class TypesController < ApplicationController


  def new
    @type = Type.new
  end

  def create
    @type_params = params.require(:type).permit(:name, :description)

    @type = Type.new @type_params
    return redirect_to root_path, notice: "Tipo salvo com sucesso." if @type.save
    flash.now[:alert] = "Não foi possível salvar tipo."
    render 'new'
  end
end