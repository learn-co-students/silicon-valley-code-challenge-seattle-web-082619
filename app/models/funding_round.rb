require 'pry'

class FundingRound

  attr_reader :startup, :venture_capitalist, :type, :investment 

  @@all = []


  def initialize(startup,venture_capitalist,type,investment)
    @startup = startup 
    @venture_capitalist = venture_capitalist
    @type = type 
    @investment =investment
    #investment should be positive and a float 
    @@all << self 
  end 

  def self.all 
    @@all 
  end 


#return to silicon valley 


end
