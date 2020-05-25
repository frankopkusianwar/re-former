module ApplicationHelper
  def users_array(users)
    if users.nil?
      []
    else
      users
    end
  end

  def errors(user)
    if user.errors.any?
      user.errors.full_messages
    else
      []
    end
  end
end
