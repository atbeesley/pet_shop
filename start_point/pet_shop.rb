

def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def  add_or_remove_cash(pet_shop, first_amount)
  pet_shop[:admin][:total_cash] += first_amount
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, number)
  pet_shop[:admin][:pets_sold] += number
end

def stock_count(pet_shop)
  return pet_shop[:pets].length()
end

def pets_by_breed(pet_shop, breed)
  pets_found = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
      pets_found.push(pet)
    end
  end
  return pets_found
end

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      pet.shift()
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_cash(customers)
  for customer in customers
    return customers[:cash]
  end
end

def remove_customer_cash(customers, amount)
  for customer in customers
    return customers[:cash] -= amount
  end
end

def customer_pet_count(customers)
  for customer in customers
    return customers[:pets].length()
  end
end


def add_pet_to_customer(customers, new_pet)
  pet_count = []
  for customer in customers
    pet_count = customers[:pets].push(new_pet)
    return pet_count.length()
  end
end



# optional

def customer_can_afford_pet(customers, new_pet)
    if customers[:cash] >= new_pet[:price]
      return true
    else
      return false
    end
  end
