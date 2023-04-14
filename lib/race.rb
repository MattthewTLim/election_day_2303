require_relative 'candidate'

class Race
  attr_reader :office
  
  def initialize(office)
    @office = office
    @candidates = []
  end

  def candidates
    @candidates
  end

  def register_candidate!(info)
    candidate = Candidate.new(info)
    @candidates << candidate
    candidate
    
  end
end