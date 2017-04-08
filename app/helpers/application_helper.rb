module ApplicationHelper

  def urgent(item)
    return true if (Time.now - item.created_at) / 1.day.seconds >= 5
  end

end
