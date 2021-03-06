class BoardsController < ApplicationController

  respond_to :json

  def search
    puts "xxxxxxxxxxxxxxxxx"
    puts(params[:term])
    respond_with Board.filtered_boards(params[:term])
  end

  def index
    respond_with Board.all
  end

  def show
    respond_with Board.find(params[:id])
  end

  def create
    respond_with Board.create(params[:board])
  end

  def update
    respond_with Board.update(params[:id], params[:board])
  end

  def destroy
    respond_with Board.destroy(params[:id])
  end
end
