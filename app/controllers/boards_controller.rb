class BoardsController < ApplicationController
  def show
    @board = trello_client.board(params[:id], cards: :open, members: :all)
  end
end
