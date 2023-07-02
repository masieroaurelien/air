# Créez un programme qui découpe une chaîne de caractères en tableau (séparateurs : espaces, tabulations, retours à la ligne).

=begin
Votre programme devra utiliser une fonction prototypée comme ceci :
ma_fonction(string_à_couper, string_séparateur) { // syntaxe selon votre langage
	# votre algorithme
	return (tableau)
}
=end

def ma_fonction(string_a_couper, string_separateur)
  if string_a_couper.nil? || string_separateur.nil?
    puts "error"
    exit
  end

  tableau = string_a_couper.split(/#{Regexp.escape(string_separateur)}/)

  tableau.each do |element|
    puts element
  end
end

ma_fonction(ARGV[0], ' ')
