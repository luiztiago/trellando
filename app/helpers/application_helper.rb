module ApplicationHelper

  def gravatar_image(user)
    "https://www.gravatar.com/avatar/" +
    Digest::MD5.hexdigest(user.email.to_s.downcase) + "?s=200&d=mm"
  end
end
