Trello.module_eval do
  def self.set_credentials(token)
    Trello.configure do |config|
      config.member_token = token
      config.developer_public_key = ENV['DEVELOPER_PUBLIC_KEY']
    end
  end
end