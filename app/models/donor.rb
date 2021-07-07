class Donor
    attr_reader :name, :amount
    @@all=[]
    def initialize(name, amount)
        @name=name 
        @amount=amount 
    end
end