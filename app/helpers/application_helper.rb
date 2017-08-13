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
    @current_order = Order.create
    session[:order_id] = @current_order.id
  end

  def current_order
    @current_order ||= Order.find_by(id: session[:order_id])
  end

  def order_exists?
    !current_order.nil?
  end
end
