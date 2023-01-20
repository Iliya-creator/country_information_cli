require "open-uri"
require "nokogiri"
require "pry"


class Scraper
    SCRAPE_URL = "https://www.scrapethissite.com/pages/simple/"
    def self.scrape_country
        doc = Nokogiri::HTML(URI.open("https://www.scrapethissite.com/pages/simple/"))

        binding.pry
    end

end

binding.pry
