# Créez un programme qui décale tous les éléments d’un tableau vers la gauche. Le premier élément devient le dernier à chaque rotation.

def rotation(array)
  if array.is_a?(Array)

    if array.length > 0

      first_element = array.shift
      array.push(first_element)

      return array
    else
      puts "Error: Le tableau est vide"
      exit
    end
  else
    puts "Error: Argument invalide"
    exit
  end
end

array = ARGV


puts rotation(array).join(' ')
