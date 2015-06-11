class User < ActiveRecord::Base
  devise :omniauthable, omniauth_providers: [:trello]

  def self.from_omniauth(auth)
    where(trello_id: auth.credentials.token).first_or_create do |user|
      user.email = auth.info.email
      user.full_name = auth.info.name
    end
  end
end
