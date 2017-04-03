class Cupboard

  attr_accessor :shelf

  def initialize
    @shelf = Location.new
    stock_shelves
  end

  def stock_shelves
    5.times do
      @shelf.contents << Glass.new
    end
  end

  def find_glass
    @shelf.contents.find { |obj| obj.class == Glass }
  end

end
