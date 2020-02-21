require("pry-byebug")

# binding.pry

def pet_shop_name( pet_shop )

  return pet_shop[:name]

end

def total_cash( money )

  return money[:admin][:total_cash]

end

def add_or_remove_cash ( pet_shop, money )

  # binding.pry
  return pet_shop[:admin][:total_cash] += money


end

def pets_sold( pet_shop )

  return pet_shop[:admin][:pets_sold]

end

def increase_pets_sold( pet_shop, amount )

  return pet_shop[:admin][:pets_sold] += amount

end

def stock_count( pet_shop )

  # total = 0
  # binding.pry
  # for pet in pet_shop
  #   for animal in pet
  #
  #     total += 1
  #
  #   end
  # end

  return pet_shop[:pets].size()

end

def pets_by_breed( pet_shop, breed )

  number_of_breed = []

  for pet in pet_shop[:pets]

    if pet[:breed] == breed
      # binding.pry
        number_of_breed.push( breed )

    end
  end
  return number_of_breed

end

def find_pet_by_name( pet_shop, name)



  for pet in pet_shop[:pets]

    if pet[:name] == name

      # binding.pry
      return pet
    end

  end
  return

end

def remove_pet_by_name( pet_shop, name)

  for pet in pet_shop[:pets]

    if pet[:name] == name

      pet[:name] = ""

    end

  end

end

def add_pet_to_stock( pet_shop, new_pet )

    pet_shop[:pets].push( new_pet )
    # binding.pry
    return pet_shop

end

def customer_cash( customer )

  return customer[:cash]

end

def remove_customer_cash( customer, amount )

  return customer[:cash] -= amount

end
