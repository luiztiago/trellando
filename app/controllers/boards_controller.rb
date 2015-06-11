class BoardsController < ApplicationController

  def index
    @boards = Client.new(current_user.trello_id).boards
  end
end
