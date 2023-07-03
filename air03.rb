#Créez un programme qui retourne la valeur d’une liste qui n’a pas de paire.

def valeur_sans_paire(liste)
  return [] if liste.length.even?

  liste. select {|element|liste.count(element) == 1 }
end

liste = ARGV.map(&:to_i)
values = valeur_sans_paire(liste)

puts values. join('')

if $PROGRAM_NAME == __FILE__
    check_arguments(ARGV) ? (p my_quick_sort(ARGV.map(&:to_i))) : exit(1)
end
