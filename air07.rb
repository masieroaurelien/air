# Créez un programme qui ajoute à une liste d’entiers triée un nouvel entier tout en gardant la liste triée dans l’ordre croissant. Le dernier argument est l’élément à ajouter.

def sorted_insert(array, new_element)
    i = 0
    while i < array.length - 1
        if new_element.to_i > array[i].to_i
            if new_element.to_i < array[i + 1].to_i
                array.insert(i + 1, new_element)
                break
            else
                i += 1
            end
        else
            array.insert(i, new_element)
            break
        end
    end
    return array
end

def give_values(inputs)
    @last_elemnent = inputs[inputs.size - 1]
    inputs.pop
    @inputs = inputs
end

def check_arguments(arguments)
    if arguments.size < 3
        puts "wrong number of arguments"
        return false
    end
    arguments.each do |arg|
        if !arg.scan(/\d/).any?
            puts "Wrong argument"
            return false
        end
    end
    return true
end

if $PROGRAM_NAME == __FILE__
    check_arguments(ARGV) ? (give_values(ARGV) ? (p sorted_insert(@inputs, @last_elemnent)) : exit) : exit(1)
end
