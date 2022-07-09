class BoardsController < ApplicationController

    def index
      @boards = Boards.all
    end

    # private
    # def boards_params
    #   params.require(:board).permit(:title, :content, :eyecatch)
    # end

    # def set_board
    #   @board = Board.find(params[:id])
    # end

end