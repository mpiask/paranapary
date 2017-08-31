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

  def create_order
    session[:order_id] = Order.create.id
  end

  def current_order
    @current_order = Order.find_by(id: session[:order_id])
    @current_order ||= Order.create
  end

  def current_order?(order)
    Order.find_by(id: session[:order_id]) == order
  end

  def order_exists?
    !current_order.nil?
  end
end
