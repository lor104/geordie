class Enterprise

  attr_reader :reactor, :transporter, :cupboard, :pantry, :replicator

  def initialize
    @reactor               = Reactor.new(self)
    @transporter           = Transporter.new(self)
    @cupboard              = Cupboard.new
    @pantry                = Pantry.new
    # @pantry.shelf.contents = []
    @replicator            =  Replicator.new(self)
  end

end
