# Créez un programme qui découpe une chaîne de caractères en tableau en fonction du séparateur donné en 2e argument.

string = ARGV[0]
@separator = ARGV[1]

def get_splited_string(string_à_couper)
    i = 0
    new_word_split = ""
    @array_word = []

    while i < string_à_couper.length
        if string_à_couper[i].scan(/\s/).any?
            @array_word.push(new_word_split)
            new_word_split = ""
            i += 1
        else
            new_word_split = new_word_split + string_à_couper[i]
            if i == string_à_couper.length - 1
                @array_word.push(new_word_split)
            end
            i += 1
        end
    end

    return true
end

def puts_splited_sentence(sentence_to_split, sentence_separator)
    i = 0
    new_sentence_split = ""
    array_sentence = []

    while i < sentence_to_split.length
        if sentence_to_split[i].include?(sentence_separator)
            array_sentence.push(new_sentence_split)
            new_sentence_split = ""
            i += 1
        else
            new_sentence_split = new_sentence_split + sentence_to_split[i] + " "
            if i == sentence_to_split.length - 1
                array_sentence.push(new_sentence_split)
            end
            i += 1
        end
    end
    return array_sentence
end

def check_number_of_arguments(arguments)
    if arguments.size != 2
        puts "Wrong number of arguments"
        return false
    end

    return true
end

if $PROGRAM_NAME == __FILE__
    check_number_of_arguments(ARGV) ? (get_splited_string(string) ? (puts puts_splited_sentence(@array_word, @separator)) : exit): exit(1)
end
