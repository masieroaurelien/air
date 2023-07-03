# Créez un programme qui transforme un tableau de chaînes de caractères en une seule chaîne de caractères. Espacés d’un séparateur donné en dernier argument au programme.

def concatener(listgroup, separateur)
  if listgroup.nil? || separateur.nil?
    puts "Error"
    return
  end

  if ARGV.length < 3
    puts "Error"
    return
  end

  result = listgroup.join(separateur)

  return result

#  result.each do |element|
#    puts element.join
#  end

end

cli = ARGV
listgroup = cli.slice(0, cli.length - 1)
separateur = ARGV[-1].to_s

result = concatener(listgroup, separateur)

puts result

if $PROGRAM_NAME == __FILE__
    check_arguments(ARGV) ? (p my_quick_sort(ARGV.map(&:to_i))) : exit(1)
end
