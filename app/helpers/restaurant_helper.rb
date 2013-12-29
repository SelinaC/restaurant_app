module RestaurantHelper

  def restaurants_for_select
    Restaurant.all.collect { |r| [r.name, r.id] }
  end

end

