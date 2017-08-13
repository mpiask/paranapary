module ApplicationHelper
	# Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Paranapary"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  # def current_order
  # if (order_id = session[:order_id])
  #   @current_order ||= Order.find_by(id: order_id)
  # end
end
