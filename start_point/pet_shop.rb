require("pry-byebug")

# binding.pry

def pet_shop_name( name )

  return @pet_shop[:name]

end

def total_cash( money )

  return @pet_shop[:admin][:total_cash]

end

def add_or_remove_cash ( name, money )

  # binding.pry
  return @pet_shop[:admin][:total_cash] += money


end

def pets_sold( pets )

  return @pet_shop[:admin][:pets_sold]

end

def increase_pets_sold( pets, amount )

  return @pet_shop[:admin][:pets_sold] += amount

end

def stock_count( pets )

  total = 0

  for pet in pets
    for animal in pet

      total += 1

    end
  end

  return total

end
