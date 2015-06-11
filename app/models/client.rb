require 'trello'

class Client
  def initialize(token)
    @trello_client = Trello::Client.new(
      developer_public_key: ENV['TRELLO_PUBLIC_KEY'],
      member_token: token
    )
    @params = params
  end

  def boards(params = {})
    trello_client.get("/members/me/boards", params.merge(filter: :open, fields: :name))
  end

  private

  attr_reader :trello_client, :params
end
