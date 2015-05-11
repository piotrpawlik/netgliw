class ReviewDecorator < Draper::Decorator
  delegate_all

  def author
    if user.firstname.blank? && user.lastname.blank?
      'No name provided.'
    else
      "#{user.firstname} #{user.lastname}".strip
    end
  end

end
