# Créez un programme qui est capable de reconnaître et de faire une opération (addition ou soustraction) sur chaque entier d’une liste.

def effectuer_operation(liste, operation)
  # Vérifier si l'opération est une addition ou une soustraction
  if operation >= 0
    liste.map! { |n| n.to_i + operation }  # Effectuer l'addition sur chaque élément de la liste
  else
    liste.map! { |n| n.to_i - operation.abs }  # Effectuer la soustraction sur chaque élément de la liste
  end

  print liste.join(" ")  # Afficher les résultats sans saut de ligne
end

# Récupérer les arguments depuis la ligne de commande
arguments = ARGV

# Vérifier si au moins deux arguments ont été fournis
if arguments.length >= 2
  liste = arguments[0...-1]  # Récupérer tous les arguments sauf le dernier
  operation = arguments.last.to_i  # Récupérer l'opération en tant que dernier argument et le convertir en entier
  effectuer_operation(liste, operation)
else
  puts "Erreur : Veuillez fournir au moins deux arguments (des entiers et une opération)."
end
