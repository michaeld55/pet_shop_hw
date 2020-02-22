require("pry-byebug")

# binding.pry

def pet_shop_name( pet_shop )

  return pet_shop[:name]

end

def total_cash( money )

  return money[:admin][:total_cash]

end

def add_or_remove_cash( pet_shop, money )

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

def find_pet_by_name( pet_shop, pet_name)

  for pet in pet_shop[:pets]

    if pet[:name] == pet_name
      # binding.pry
      return pet
    end
  end
  return

end

def remove_pet_by_name( pet_shop, pet_name)
  # binding.pry
  if pet_name = find_pet_by_name( pet_shop, pet_name)
    # binding.pry
    return pet_name[:name] = ""
  end

      # for pet in pet_shop[:pets]
      #
      #   if pet[:name] == name
      #
      #     pet[:name] = ""
      #
      #   end
      #
      # end
end


def add_pet_to_stock( pet_shop, new_pet )

    return pet_shop[:pets].push( new_pet )

end

def customer_cash( customer )

  return customer[:cash]

end

def remove_customer_cash( customer, amount )

  return customer[:cash] -= amount

end

def customer_pet_count( customer )

  return customer[:pets].size()

end

def add_pet_to_customer( customer, pet_name )

  return customer[:pets].push( pet_name )

end

def customer_can_afford_pet( customer, pet )

  return customer[:cash] >= pet[:price]

end

def sell_pet_to_customer( pet_shop, pet, customer )

  if( pet == nil)

    return nil

  elsif( customer_can_afford_pet( customer, pet ))

        cost = pet[:price]
        add_pet_to_customer( customer, pet );
        customer_pet_count( customer );
        remove_customer_cash( customer, cost );
        remove_pet_by_name( pet_shop, pet);
        add_or_remove_cash( pet_shop, cost );
        increase_pets_sold( pet_shop, 1 );

    end
end
