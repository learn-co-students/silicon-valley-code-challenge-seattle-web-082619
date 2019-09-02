class Startup
    attr_reader :name, :founder, :domain

    @@all = []

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def self.all 
        @@all
    end

    def pivot(new_domain, new_name)
        self.domain_change=(new_domain)
        self.name_change=(new_name)
        self
    end

    def self.find_by_founder(founder_name)
        self.all.find { |f| f.founder == founder_name }
    end

    def self.domains
        self.all.collect { |s| s.domain }
    end

    def sign_contract(vc, type, investment)
        FundingRound.new(self, vc, type, investment)
    end

    def funding_rounds
        FundingRound.all.select { |f| f.startup == self }
    end

    def num_funding_rounds
        self.funding_rounds.length
    end

    def total_funds
        self.funding_rounds.collect { |i| i.investment }.sum
    end

    def investors 
        self.funding_rounds.collect { |i| i.venture_capitalist }.uniq
    end

    def big_investors # could be improved?
        self.investors.select { |b| b.total_worth > 1_000_000_000 }
    end

    private

    def domain_change=(new_domain)
        @domain = new_domain
    end

    def name_change=(new_name)
        @name = new_name
    end

end
