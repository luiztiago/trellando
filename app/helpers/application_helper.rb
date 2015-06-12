module ApplicationHelper

  def gravatar_image(user, size = "200")
    "https://www.gravatar.com/avatar/" +
    Digest::MD5.hexdigest(user.email.to_s.downcase) + "?s=" + size +  "&d=mm"
  end

  def trello_image(user, size = "170")
    return "https://www.gravatar.com/avatar/5658ffccee7f0ebfda2b226238b1eb6e?s=#{size}" unless user.avatarHash
    "https://trello-avatars.s3.amazonaws.com/#{user.avatarHash}/#{size}.png"
  end
end
