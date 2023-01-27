class CLI
    def run
        system('clear')

        greeting
        instruction_prompt
        Scraper.scrape_country
        while menu != 'exit'

        end
        end_program

    end

    def greeting
        puts "><>< Welcome to Countries of the World Informational Portal. ><><"
    end

    def instruction_prompt
        puts "----------------------------"
        puts "> Use this handy CLI to learn a little about the world we live in."
        puts "----------------------------"
        puts ""
    end

    def menu
        #list options
        list_options
        # ask the user which one does he/she want?
        puts ""
        puts "----------------------------"
        puts "> What would you like to know?"
        input = gets.chomp
        if input == "exit" 
            return input
        end
        choose_option(input)
        puts "Would you like to continue? y for YES, n for NO"
        puts ""
        cont_input = gets.chomp
        if cont_input == "n" || cont_input == "exit"
            return "exit"
        end
        return input
    end

    def list_options
        puts "1. What country has the largest area?"
        puts "2. What country has the largest population?"
        puts "3. What country has the smallest area?"
        puts "4. What country has the smallest population?"
        puts " "
        puts " Otherwise, type 'exit' and you will be out of the program."
    end
    
    def choose_option(input)
        case input
        when "1"
            puts "You selected Option 1: What is the country with the largest area?"
            puts "____________________________________________________"
            puts ""
            puts "#{find_largest_area.name} has the largest area." 
            puts "It's area is #{find_largest_area.area} kilometers squared."
            puts "____________________________________________________"
            puts ""
        when "2"
            puts "You selected Option 2: What country has the largest population?"
            puts "____________________________________________________"
            puts ""
            puts "#{find_largest_population.name} has the largest population."
            puts "It's population is #{find_largest_population.population}."
            puts "____________________________________________________"
            puts ""
        when "3"
            puts "You selected Option 3: What country has the smallest area?"
            puts "____________________________________________________"
            puts ""
            puts "#{find_smallest_area.name} has the smallest area."
            puts  "It's area is #{find_smallest_area.area} kilometers squared."
            puts "____________________________________________________"
            puts ""
        when "4"
            puts "You selected Option 4: What country has the smallest population?"
            puts "____________________________________________________"
            puts ""
            puts "#{find_smallest_population.name} has the smallest population."
            puts "It's population is #{find_smallest_population.population}."
            puts "____________________________________________________"
            puts ""
        end
    end

    def find_largest_area
        Country.all.max{|a, b| a.area <=> b.area}
    end

    def find_largest_population
        Country.all.max{|a, b| a.population <=> b.population}
    end

    def find_smallest_area
        Country.all.min{|a, b| a.area <=> b.area}
    end

    def find_smallest_population
        Country.all.min{|a, b| a.population <=> b.population}
    end

    def end_program
        puts "See you later. To run the application again, open WSL, cd into '/mnt/c/Users/Matve/Desktop/country_information_cli' and then run 'ruby bin/tracker'"
    end
  end


