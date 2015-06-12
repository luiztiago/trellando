class BoardsController < ApplicationController

  def index
    @boards = trello_client.boards
  end

  def show
    @board = trello_client.board(params[:id], cards: "all", members: "all")
  end
end
