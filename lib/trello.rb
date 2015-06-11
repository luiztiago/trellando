Trello.module_eval do
  def self.set_credentials(token)
    Trello.configure do |config|
      config.member_token = token
      config.developer_public_key = ENV['TRELLO_PUBLIC_KEY']
    end
  end
end
