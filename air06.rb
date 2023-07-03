#Créez un programme qui supprime d’un tableau tous les éléments qui ne contiennent pas une autre chaîne de caractères.

def check_arguments(arguments)
    if arguments.size < 2
        puts "Wrong number of arguments"
        return false
    end
    arguments.each do |arg|
        if !arg.scan(/[a-zA-Z]/).any?
            puts "Wrong argument"
            return false
        end
    end
    return true
end

def put_non_infected_strings(array_of_strings, comparator)
    result = []
    array_of_strings.each do |string|
        if !string.include?(comparator.downcase) && !string.include?(comparator.upcase)
            result.push(string)
        end
    end
    return result
end

def give_the_array_and_the_comparator(array)
    @last_argument = array[array.size - 1]
    array.pop()
    @array = array
end

if $PROGRAM_NAME == __FILE__
    check_arguments(ARGV) ? (give_the_array_and_the_comparator(ARGV) ? (puts put_non_infected_strings(@array, @last_argument)) : exit ) : exit(1)
end
