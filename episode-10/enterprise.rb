class Enterprise

  attr_reader :reactor, :transporter, :cupboard, :pantry, :replicator

  def initialize
    @reactor     =     Reactor.new(self)
    @transporter = Transporter.new(self)
    @cupboard    =    Cupboard.new
    @pantry      =      Pantry.new
    @replicator  =  Replicator.new(self)
    @reactor.turn_on
  end

end
