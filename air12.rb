# Créez un programme qui trie une liste de nombres. Votre programme devra implémenter l’algorithme du tri rapide (QuickSort).

def quick_sort(arr)
  return arr if arr.length < 1

  pivot = arr.sample
  less_than_pivot = arr.select { |num| num < pivot }
  equal_to_pivot = arr.select { |num| num == pivot }
  greater_than_pivot = arr.select { |num| num > pivot }

  quick_sort(less_than_pivot) + equal_to_pivot + quick_sort(greater_than_pivot)
end

def validate_integer_arguments(args)
  args.each do |arg|
    unless arg.to_i.to_s == arg
      puts "Error"
      exit 1
    end
  end
end

# Vérification des arguments
validate_integer_arguments(ARGV)

# Conversion des arguments en entiers
numbers = ARGV.map(&:to_i)

# Tri des nombres en utilisant le QuickSort
sorted_numbers = quick_sort(numbers)

# Affichage des nombres triés
puts sorted_numbers.join(' ')
