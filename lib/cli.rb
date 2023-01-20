class CLI
    def run
        system('clear')
        greeting
        instruction_prompt
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
        choose_option(input)
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
            puts "Option 1 was chosen"
        when "2"
            puts "Option 2 was chosen"
        when "3"
            puts "Option 3 was chosen"
        when "4"
            puts "Option 4 was chosen"
        end
    end

    def end_program
        puts "See you later. To run the application again, open WSL, cd into '/mnt/c/Users/Matve/Desktop/country_information_cli' and then run 'ruby bin/tracker'"
    end
  end


