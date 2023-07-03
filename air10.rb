# Créez un programme qui affiche le contenu d’un fichier donné en argument.

def read_file(name)
    file = File.open("#{name}")
    return file.read
end

def check_argument(argument)
    if argument.size != 1
        puts "Wrong number of argument"
        return false
    end
    if !File.exists?("test")
        puts "This file does not exist"
        return false
    end
    return true
end

if $PROGRAM_NAME == __FILE__
    check_argument(ARGV) ? (p read_file(ARGV[0])) : exit(1)
end
