def pet_shop_name(pet_shop)
return pet_shop[:name]
end

def total_cash(pet_shop)
return pet_shop[:admin][:total_cash]
end

def   add_or_remove_cash(pet_shop, first_amount)
pet_shop[:admin][:total_cash] += first_amount
end

def pets_sold(pet_shop)
return pet_shop[:admin][:pets_sold]
end

# def increase_pets_sold( sold , pet_shop)
#  input_pets_sold = pet_shop[:admin][:pets_sold] + sold
# end

def stock_count(pet_shop)
  return pet_shop[:pets].length()
end
