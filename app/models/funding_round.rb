class FundingRound
    attr_reader :startup, :venture_capitalist, :type, :investment

    @@all = []

    def initialize(startup, vc, type, investment)
        @startup = startup
        @venture_capitalist = vc 
        @type = type 
        @investment = investment
        @@all << self 
        investment_error
    end

    def self.all 
        @@all 
    end

    private 

    def investment_error
        if self.investment < 0 
            @@all.pop 
            puts "Invalid investment, you may only invest a positive value."
        end
    end

end
