class ListsController < ApplicationController
  before_action :set_list, only: [:destroy]

  # GET /lists
  def index
    @lists = List.all
  end

  # POST /lists
  def create
    @list = List.new(list_params)

    if @list.save
      flash[:notice] =  'List was successfully created.'
    else
      flash[:alert] =  'Something Went Wrong! Unable to save list.'
    end
    redirect_to root_path
  end

  # DELETE /lists/1
  def destroy
    @list.destroy
    redirect_to root_path, notice: 'List was successfully destroyed.'
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_list
    @list = List.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def list_params
    params.require(:list).permit(:title)
  end


end
