module Trello
  class Session < Struct.new(:token)

    def start
      Trello.set_credentials(token)
    end
  end
end