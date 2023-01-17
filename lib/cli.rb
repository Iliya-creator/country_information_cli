class CLI
    def run
        system('clear')
        greeting
        instructions_prompt
        program_runs
        end_program

    end

    def greeting
        puts "Welcome to Countries of the World."
    end

    def instructions_prompt
        puts "Just follow along with the instructions and prompts."
    end

    def program_runs
        puts "Program runs........."
    end

    def end_program
        puts "See you later. To run the application again, open WSL, cd into '/mnt/c/Users/Matve/Desktop/country_information_cli' and then run 'ruby bin/tracker'"
    end
  end


