# Afficher un escalier constitué d’un caractère et d’un nombre d’étages donné en paramètre.

def draw_pyramid(character, number)
    n_white_space = number.to_i - 1
    n_characters = 1
    i = number.to_i
    container  = []
    while i > 0
        container.push([' '].cycle(n_white_space).to_a.join('') + [character].cycle(n_characters).to_a.join('') + [' '].cycle(n_white_space).to_a.join(''))
        n_white_space -= 1
        n_characters += 2
        i -= 1
    end
    return container
end

def check_arguments(arguments)
    if arguments.size != 2
        puts "Wrong number of arguments"
        return false
    end
    if !arguments[1].scan(/\d/).any?
        puts "The second argument is wrong"
        return false
    end
    return true
end

if $PROGRAM_NAME == __FILE__
    check_arguments(ARGV) ? (puts draw_pyramid(ARGV[0], ARGV[1])) : exit(1)
end
