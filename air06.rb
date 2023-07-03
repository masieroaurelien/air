#Créez un programme qui supprime d’un tableau tous les éléments qui ne contiennent pas une autre chaîne de caractères.

def filtrer_elements(array, substring)
  filtered_array = array.select { |element| element.downcase.include?(substring.downcase) }
  return filtered_array
end

# Récupérer les arguments depuis la ligne de commande
arguments = ARGV

# Vérifier si au moins deux arguments ont été fournis
if arguments.length >= 2
  array = arguments[0...-1]  # Récupérer tous les arguments sauf le dernier
  substring = arguments.last  # Récupérer la sous-chaîne à rechercher en tant que dernier argument
  filtered_array = filtrer_elements(array, substring)
  puts filtered_array.join(", ")  # Afficher les éléments filtrés, séparés par des virgules
else
  puts "Erreur : Veuillez fournir au moins deux arguments (des chaînes de caractères et une sous-chaîne à rechercher)."
end

if $PROGRAM_NAME == __FILE__
    check_arguments(ARGV) ? (p my_quick_sort(ARGV.map(&:to_i))) : exit(1)
end
