class BoardsController < ApplicationController
  def show
    @board = trello_client.board(params[:id], cards: "all", members: "all")
  end
end
