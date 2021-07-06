class VentureCapitalist
    attr_reader :name, :total_worth

    @@all = []

    def initialize (name, total_worth)
        @name = name
        @total_worth = total_worth
        @@all << self
    end

    def self.all 
        @@all
    end

    def self.tres_commas_club
        self.all.select { |b| b.total_worth > 1_000_000_000 }
    end

    def offer_contract(startup, type, investment)
        FundingRound.new(startup, self, type, investment)
    end

    def funding_rounds
        FundingRound.all.select { |m| m.venture_capitalist == self }
    end

    def portfolio
        self.funding_rounds.collect { |i| i.startup }.uniq
    end

    def biggest_investment
        big = 0
        round = nil
        self.funding_rounds.each do |i| 
            if i.investment > big
                big = i.investment
                round = i
            end
        end
        round
    end

    def invested(domain)
        domains_info = FundingRound.all.select { |i| i.startup.domain == domain }
        domains_info.collect { |i| i.investment }.sum
    end
    
end
