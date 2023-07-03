# Créez un programme qui découpe une chaîne de caractères en tableau (séparateurs : espaces, tabulations, retours à la ligne).

=begin
Votre programme devra utiliser une fonction prototypée comme ceci :
ma_fonction(string_à_couper, string_séparateur) { // syntaxe selon votre langage
	# votre algorithme
	return (tableau)
}
=end

def puts_splited_string(string_à_couper, string_séparateur)
    i = 0
    new_word_split = ""
    array = []

    while i < string_à_couper.length
        if string_à_couper[i] == string_séparateur
            array.push(new_word_split)
            new_word_split = ""
            i += 1
        else
            new_word_split = new_word_split + string_à_couper[i]
            if i == string_à_couper.length - 1
                array.push(new_word_split)
            end
            i += 1
        end
    end

    return array
end

def check_number_of_arguments(arguments)
    if arguments.size != 2
        puts "Wrong number of arguments"
        return false
    end

    return true
end

if $PROGRAM_NAME == __FILE__
    check_number_of_arguments(ARGV) ? (puts puts_splited_string(ARGV[0], ARGV[1])) : exit(1)
end
