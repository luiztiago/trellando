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
    trello_client.get("/members/me/boards", params.merge(DEFAULT_OPTIONS))
  end

  private

  attr_reader :trello_client
end
