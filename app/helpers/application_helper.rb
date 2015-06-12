module ApplicationHelper

  def gravatar_image(user, size="200")
    "https://www.gravatar.com/avatar/" +
    Digest::MD5.hexdigest(user.email.to_s.downcase) + "?s=" + size +  "&d=mm"
  end
end
