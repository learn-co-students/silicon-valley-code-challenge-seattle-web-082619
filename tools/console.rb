require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# you need to make examples for every class so you can test it appropriately. 

#start up examples 
hack_reactor = Startup.new("Hack Reactor","Rich Barton","Tech")
flat_iron = Startup.new("Flat Iron","Tom Brady","Tech")
puppies_are_us = Startup.new("Puppies Are Us","Tom Brady","Lifestyle")
coding_bootcamp = Startup.new("Coding Bootcamp","Ian Harold","Education")


#ventureCapitlaists 
vc_one = VentureCapitalist.new("Ian Harold",100_000_000_000_000_000_000)
vc_two = VentureCapitalist.new("John Lennon",100_000_000_000_000_000_000)
vc_three = VentureCapitalist.new("Noah Harold",1000_000_000)

#funding round examples 

fr_one = FundingRound.new(hack_reactor,vc_one,"Angel",100_000_000_000)
fr_two = FundingRound.new(flat_iron,vc_two,"Series B",300_000_000)
fr_three = FundingRound.new(puppies_are_us,vc_three,"Angel",100_000)
fr_four = FundingRound.new(coding_bootcamp,vc_two,"Angel",100_000_000)



# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line