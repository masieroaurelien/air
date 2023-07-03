# Créez un programme qui découpe une chaîne de caractères en tableau en fonction du séparateur donné en 2e argument.

def decoupage(string_a_couper, separateur)
  if string_a_couper.nil? || separateur.nil?
    puts "Error"
    return
  end

  tableau = string_a_couper.split(separateur)

  tableau.each do |element|
    puts element.strip
  end
end

phrase = ARGV[0].to_s
separateur = ARGV[1]

decoupage(phrase, separateur)

if $PROGRAM_NAME == __FILE__
    check_arguments(ARGV) ? (p my_quick_sort(ARGV.map(&:to_i))) : exit(1)
end
