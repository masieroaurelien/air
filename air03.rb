#Créez un programme qui retourne la valeur d’une liste qui n’a pas de paire.


def valeur_sans_paire(liste)

  if liste.empty? || liste.length <= 2
    puts "Error"
    return nil
  end

  liste.each do |element|
    if liste.count(element) == 1
      return element
    end
  end

  return "Erreur"
end

liste = ARGV
valeur = valeur_sans_paire(liste)

puts valeur
