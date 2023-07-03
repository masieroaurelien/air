# Créez un programme qui fusionne deux listes d’entiers triées en les gardant triées, les deux listes seront séparées par un “fusion”.


def sorted_fusion(array1, array2)
    new_array = []
    loop do
        if array1.empty?                                    #Si nan la dernière plus grande valeur ne sort pas
            new_array.push(array2)
            break
        elsif array2.empty?                                 #Si nan la dernièere plus grande valeur ne sort pas
            new_array.push(array1)
            break
        else
            if array1[0] < array2[0]
                new_array.push(array1.shift)
            elsif array1[0] > array2[0]
                new_array.push(array2.shift)
            end
        end
    end
    return new_array
end

def check_arguments(arguments)
    if arguments.size < 5
        puts "Wrong number of arguments"
        return false
    end
    if !arguments.include?("fusion")
        puts "You forget the fusion"
        return false
    end
    arguments.delete("fusion")
    arguments.each do |argument|
        if !argument.scan(/\d/).any?
            puts "#{argument} is a wrong argument"
            return false
        end
    end
    return true
end

def edit_arguments(values)
    i = values.index("fusion")
    @arr1 = values.slice(0..i-1)
    @arr2 = values.slice(i+1..values.size-1)
end

if $PROGRAM_NAME == __FILE__
    check_arguments(ARGV.clone) ? (edit_arguments(ARGV) ? (puts sorted_fusion(@arr1, @arr2)) : exit) : exit(1)    #Obliger d'utiliser un clone
end
