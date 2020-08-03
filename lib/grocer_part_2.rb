require_relative './part_1_solution.rb'
require 'pry'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  final_arr = []
  binding.pry
  cart.each do |item|
    coupons.each do |coupon|
      binding.pry
      if item[:item] == coupon[:item] && item[:count] >= coupon[:num]
        item[:count] -= coupon[:num]
        final_arr << item if item[:count] > 0
      end
    end
  end
  binding.pry
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
