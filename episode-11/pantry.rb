class Pantry

  attr_accessor :shelf

  def initialize
    @shelf = Location.new
    stock_shelf
  end

  def stock_shelf
    Ingredient.names.each do |ingredient_name|
      3.times do
        @shelf.contents << Ingredient.new(ingredient_name)
      end
    end
  end

  def find_ingredient(name)
    @shelf.contents.find { |item| item.name == name }
  end

end
