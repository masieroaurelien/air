#Créez un programme qui retourne la valeur d’une liste qui n’a pas de paire.

def check_number_of_arguments(arguments)
    if arguments.size < 3
        puts "Wrong number of arguments"
        return false
    end

    return true
end

def puts_the_intruders(array)
    i = 0
    sorted_array = array.sort
    while i < array.length
        if sorted_array[i] != sorted_array[i+1]
            return sorted_array[i]
            i += 1
        else
            i += 2
        end
    end
end

if $PROGRAM_NAME == __FILE__
    check_number_of_arguments(ARGV) ? (puts puts_the_intruders(ARGV)) : exit(1)
end    
