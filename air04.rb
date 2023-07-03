# Créez un programme qui affiche une chaîne de caractères en évitant les caractères identiques adjacents.

def afficher_sans_adjacents_identiques(chaine)
  if chaine.empty?
    puts "Error"
    return
  end

  nouvelle_chaine = chaine[0]

  (1...chaine.length).each do |i|
    if chaine[i] != chaine[i - 1]
      nouvelle_chaine += chaine[i]
    end
  end

  puts nouvelle_chaine
end

chaine = ARGV.join("")

afficher_sans_adjacents_identiques(chaine)

if $PROGRAM_NAME == __FILE__
    check_arguments(ARGV) ? (p my_quick_sort(ARGV.map(&:to_i))) : exit(1)
end
