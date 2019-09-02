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

    def investment_error # not actually returning error message, but it is removing negative investments from @@all
        if self.investment < 0 
            @@all.pop 
            return "Invalid investment, you may only invest a positive value."
        end
    end

end
