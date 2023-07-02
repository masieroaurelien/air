# Créez un programme qui ajoute à une liste d’entiers triée un nouvel entier tout en gardant la liste triée dans l’ordre croissant. Le dernier argument est l’élément à ajouter.

def ajouter_element(liste, nouvel_element)
  index = 0
  while index < liste.length && nouvel_element > liste[index]
    index += 1
  end
  liste.insert(index, nouvel_element)
  return liste
end

# Récupérer les arguments depuis la ligne de commande
arguments = ARGV

# Vérifier si au moins deux arguments ont été fournis
if arguments.length >= 2
  # Vérifier si tous les arguments sont des entiers
  if arguments[0..].all? { |arg| arg.match?(/^\d+$/) }
    liste = arguments[0...-1].map(&:to_i)  # Convertir les arguments en entiers
    nouvel_element = arguments.last.to_i  # Convertir le dernier argument en entier
    liste = ajouter_element(liste, nouvel_element)
    puts liste.join(" ")  # Afficher la liste mise à jour
  else
    puts "Erreur : Veuillez fournir uniquement des entiers dans la liste."
  end
else
  puts "Erreur : Veuillez fournir au moins deux arguments (une liste d'entiers triée et un nouvel entier à ajouter)."
end
