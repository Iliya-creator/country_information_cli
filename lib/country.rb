class Country
    attr_accessor :name, :population, :area
    @@countries = []

    def initialize(country_name, country_population, country_area)
        @name = country_name
        @population = country_population
        @area = country_area

        @@countries << self
    end

    # class method
    def self.all
        @@countries
    end

end


