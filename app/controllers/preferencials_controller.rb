class PreferencialsController < ApplicationController
  before_action :set_preferencial, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!, except: [:show, :index]
  respond_to :html

  def index
    @preferencials = Preferencial.all
    respond_with(@preferencials)
  end

  def show
    respond_with(@preferencial)
  end

  def new
    @preferencial = Preferencial.new
    respond_with(@preferencial)
  end

  def edit
  end

  def create
    @preferencial = Preferencial.new(preferencial_params)
    @preferencial.save
    respond_with(@preferencial)
  end

  def update
    @preferencial.update(preferencial_params)
    respond_with(@preferencial)
  end

  def destroy
    @preferencial.destroy
    respond_with(@preferencial)
  end

  private
    def set_preferencial
      @preferencial = Preferencial.find(params[:id])
    end

    def preferencial_params
      params.require(:preferencial).permit(:nombre, :cliente_id)
    end
end
