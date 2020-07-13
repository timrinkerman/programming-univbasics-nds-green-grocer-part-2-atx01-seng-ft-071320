require_relative './part_1_solution.rb'
require "pry"
def apply_coupons(cart, coupons)
  index = 0
  while index < cart.length
  cart.each do |grocery_item|
     current_item = find_item_by_name_in_collection(grocery_item[:item],cart)
     coupons.each do |discounts|
     item_with_coupon = "#{current_item[:item]} W/COUPON"
     #use our find item funciton to find the item that matches the above
     cart_item_with_coupon = find_item_by_name_in_collection(discounts[:item], coupons)
    if current_item[:count] >= cart_item_with_coupon[:num] 
      current_item[:price] = cart_item_with_coupon[:cost]
      if current_item[:count] > cart_item_with_coupon[:num]
        current_item[:count] - cart_item_with_coupon[:num]
        current_item[:price] 
      current_item[:item] = item_with_coupon
  
   end   
end
  end
end
  cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
