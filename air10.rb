# Créez un programme qui affiche le contenu d’un fichier donné en argument.

def afficher_contenu_fichier(fichier)
  if File.exist?(fichier)

    if File.file?(fichier)

      File.open(fichier, "r") do |file|

        file.each_line do |line|
          puts line
        end
      end
    else
      puts "Error: Le chemin ne correspond pas à un fichier"
      exit
    end
  else
    puts "Error: Fichier inexistant"
    exit
  end
end

fichier = ARGV[0]

afficher_contenu_fichier(fichier)

if $PROGRAM_NAME == __FILE__
    check_arguments(ARGV) ? (p my_quick_sort(ARGV.map(&:to_i))) : exit(1)
end
