require 'pry'

class Startup
  attr_reader :founder, :domain
  attr_accessor :name

  @@all =[]

  def initialize(name,founder,domain)
    @name = name  
    @founder = founder 
    @domain = domain
    @@all << self 
  end 

  def self.all
  @@all 
  end 

  def pivot(name, domain)
    @name = name 
    @domain = domain 
  end 
  #can still write to it using the instance variable 
  #return to this method 

  #Startup.all ---
  def self.find_by_founder(founder)
    all.find { |startup| startup.founder == founder }
  end 

  #find finds the first when the block is not false 

    #could use each, first time 
    # all.each do |start|
    #   if start.founder == founder
    #     return start
    #   end
    # end
    # return nil
    # when you do a block, it doesnt require an end  } second curly has an end 


  def self.domains
    startup_domains = []
    all.each do |startup|
      startup_domains << startup.domain
    end 
    startup_domains.uniq
  end 

  def sign_contract(venture_captialist,type,investment)
    FundingRound.new(startup,venture_captialist)
  end  


#return back to silicon valley - 

end
