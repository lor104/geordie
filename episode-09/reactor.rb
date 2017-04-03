class Reactor

  attr_reader :core, :on

  def initialize(enterprise)
    @enterprise = enterprise
    @core = Location.new
    @on = false
    @dilithium_crystals = 0
    stock
    turn_on
  end

  def stock
    @dilithium_crystals += 100
  end

  def draw_power(amount = 1)
    amount.times do
      return false if off?
      drain_power
    end
  end

  def drain_power
    @dilithium_crystals -= 1 if on?
    turn_off if @dilithium_crystals == 0
  end

  def turn_on
    @on = true if @dilithium_crystals > 0
  end

  def turn_off
    @on = false
  end

  def on?
    @on
  end

  def off?
    !@on
  end

  def heat_items_in_core
    @core.contents.each do |item|
      item.temperature += 1 if draw_power
    end
  end

  def cool_items_in_core
    @core.contents.each do |item|
      item.temperature -= 1 if draw_power(2)
    end
  end

end
