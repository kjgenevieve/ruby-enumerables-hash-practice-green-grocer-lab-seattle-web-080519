def consolidate_cart(cart_ary)
  # change array into a hash
  ### Sample Array: ###
    # [
    # {"AVOCADO" => {:price => 3.00, :clearance => true }},
    # {"AVOCADO" => {:price => 3.00, :clearance => true }},
    # {"KALE"    => {:price => 3.00, :clearance => false}}
    # ]
  ### Resulting Cart: ###
  # {
  # "AVOCADO" => 
  #   {
  #    :price => 3.00,
  #   :clearance => true,
  #   :count => 2
      },
  # "KALE"  =>
  #   {
  #   :price => 3.00,
  #   :clearance => false,
  #   :count => 1
  #   }
  # }
  
  cart_hash = {}
  
  # for every item in the cart_ary
  cart_ary.each do |item_hash|
    item_hash.each do |food_name, food_data_hash|
      # if the item is already there...
      if food_name == cart_hash.keys
        #update the cart_hash to +1 item
          cart_hash[food_data_hash][:count] += 1
    # else add it to the cart_hash
      else
        cart_hash
      end
  end
end
























# def consolidate_cart(cart)
#   consolidated_items = {}
#   cart.each do |item|
#     if consolidated_items[item.keys[0]]
#       consolidated_items[item.keys[0]][:count] += 1
#     else
#         consolidated_items[item.keys[0]] = {
#           price: item.values[0][:price],
#           clearance: item.values[0][:clearance],
#           count: 1
#         }
#     end
#   end
#   return consolidated_items
# end

# def apply_coupons(cart, coupons)
#   coupons.each do |coupon|
#     if cart.keys.include? coupon[:item]
#       if cart[coupon[:item]][:count] >= coupon[:num]
#         new_name = "#{coupon[:item]} W/COUPON"
#         if cart[new_name]
#           cart[new_name][:count] += coupon[:num]
#         else
#           cart[new_name] = {
#             count: coupon[:num],
#             price: coupon[:cost]/coupon[:num],
#             clearance: cart[coupon[:item]][:clearance]
#           }
#         end
#         cart[coupon[:item]][:count] -= coupon[:num]
#       end
#     end
#   end
#   cart
# end

# def apply_clearance(cart)
#   cart.keys.each do |item|
#     if cart[item][:clearance]
#       cart[item][:price] = (cart[item][:price]*0.80).round(2)
#     end
#   end
#   cart
# end

# def checkout(cart, coupons)
#   consol_cart = consolidate_cart(cart)
#   cart_with_coupons_applied = apply_coupons(consol_cart, coupons)
#   cart_with_discounts_applied = apply_clearance(cart_with_coupons_applied)

#   total = 0.0
#   cart_with_discounts_applied.keys.each do |item|
#     total += cart_with_discounts_applied[item][:price]*cart_with_discounts_applied[item][:count]
#   end
#   total > 100.00 ? (total * 0.90).round : total
# end 