require 'trello'

class Client

  DEFAULT_OPTIONS = { filter: :open, fields: :name }

  def initialize(token)
    @trello_client = Trello::Client.new(
      developer_public_key: ENV['TRELLO_PUBLIC_KEY'],
      member_token: token
    )
  end

  def boards(params = {})
    items = get "/members/me/boards", params
    items.map { |item| Board.new(item) }
  end

  def board(id, params = {})
    board = get "/boards/#{id}", params
    Board.new(board)
  end

  private

  attr_reader :trello_client

  def get(route, params = {})
    parse_json trello_client.get(route, DEFAULT_OPTIONS.merge(params))
  end

  def parse_json(content)
    JSON.parse(content)
  end
end
