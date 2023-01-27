require "open-uri"
require "nokogiri"
require "pry"
require_relative "country.rb"


class Scraper
    SCRAPE_URL = "https://www.scrapethissite.com/pages/simple/"
    def self.scrape_country
        doc = Nokogiri::HTML(URI.open("https://www.scrapethissite.com/pages/simple/"))
        doc.css(".country").each do |country|
            country_name = country.css(".country-name").text.gsub(/[\s,]/, "")
            country_population = country.css(".country-population").text.gsub(/[\s,]/, "")
            country_area = country.css(".country-area").text.gsub(/[\s,]/, "")
            Country.new(country_name, country_population, country_area)
        end

    end

end


