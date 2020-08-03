require_relative './part_1_solution.rb'
require 'pry'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  cart.each do |item|
    coupons.each do |coupon|
      if item[:item] == coupon[:item] && item[:count] >= coupon[:num]
        cart << {
          :item => "#{item[:item]} W/COUPON",
          :price => coupon[:cost] / coupon[:num],
          :clearance => item[:clearance],
          :count => coupon[:num]
        }
        item[:count] -= coupon[:num]
      end
    end
  end
  #binding.pry
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  cart.each do |item| 
    if item[:clearance] == true
      item[:price] *= 0.8
      item[:price] = item[:price].round(2)
    end
  end
  #binding.pry
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
  consolidate_cart(cart)
  apply_coupons(cart, coupons)
  apply_clearance(cart)
  total = 0
  cart.each do |item|
    binding.pry
    total += item[:price]
  end
end
