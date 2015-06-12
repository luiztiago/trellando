class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  private

  def trello_client
    return unless current_user
    @_trello_client ||= Client.new(current_user.trello_id)
  end
end
