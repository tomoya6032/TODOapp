class BoardsController < ApplicationController
  before_action :set_article, only: [:show]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  
    def index
      @boards = Boards
    end

    private
    def board_params
      params.require(:board).permit(:title, :content, :eyecatch)
    end

    def set_board
      @board = Board.find(params[:id])
    end

end