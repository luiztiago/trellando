class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  def user_boards
    trello_client.boards if current_user
  end

  private

  def trello_client
    return unless current_user
    @_trello_client ||= Client.new(current_user.trello_id)
  end

  helper_method :user_boards
end
