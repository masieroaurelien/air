# Créez un programme qui vérifie si les exercices de votre épreuve de l’air sont présents dans le répertoire et qu’ils fonctionnent (sauf celui là). Créez au moins un test pour chaque exercice.

require 'colorize'

# Méthode pour vérifier si un fichier existe dans le dossier actuel
def file_exists?(file_name)
  File.exist?(File.join(Dir.pwd, file_name))
end

count = 0

files_to_check = []

while count < 13
  files_to_check << "air#{'%02d' % count}.rb"
  count += 1
end

# Vérification des fichiers
files_to_check.each do |file_name|
  if file_exists?(file_name)
    puts "#{file_name} : success".green
    system("ruby #{file_name} 1 2 3 4 5")
  else
    puts "#{file_name} : failure".red
  end
end
