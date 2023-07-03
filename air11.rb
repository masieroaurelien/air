# Afficher un escalier constitué d’un caractère et d’un nombre d’étages donné en paramètre.

def afficher_escalier(caractere, nombre_etages)
  espace = " "

  if caractere != nil && caractere.length == 1 && nombre_etages != nil
    nombre_etages = nombre_etages.to_i
    for etage in 1..nombre_etages
      ligne = espace * (nombre_etages - etage) + caractere * (2 * etage - 1)
      puts ligne
    end
  else
    puts "Error"
  end
end

# Exemple d'utilisation
caractere = ARGV[0]
nombre_etages = ARGV[1]
afficher_escalier(caractere, nombre_etages)
