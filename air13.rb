# Créez un programme qui vérifie si les exercices de votre épreuve de l’air sont présents dans le répertoire et qu’ils fonctionnent (sauf celui là). Créez au moins un test pour chaque exercice.

COLOR_RED = "\e[31m"
COLOR_GREEN = "\e[32m"
COLOR_RESET = "\e[0m"

(1..12).each do |i|
  if i < 10
    if !File.exists?("air0#{i}.rb")
      exit
    end
  else
    if !File.exists?("air#{i}.rb")
      exit
    end
  end
end

@number_of_test_successful = 0

def test1 ()
  require_relative "air00.rb"

  result1 = puts_splited_string("Bonjour les gars", " ")
  expected_output1 = ["Bonjour", "les", "gars"]
  result2 = check_number_of_arguments(["aa aa"," "])
  expected_output2 = true
  array = []
  (result1 == expected_output1) ? array.push(1) : array.push(2)
  (result2 == expected_output2) ? array.push(1) : array.push(2)
  return array
end

def test2 ()
  require_relative "air01.rb"

  result1 = puts_splited_string("Crevette magique dans la mer des étoiles", "la")
  expected_output1 = ["aa", "bb", "zz"]
  array = []
  (result1 == expected_output1) ? array.push(1) : array.push(2)
  return array
end

def test3 ()
  require_relative "air02.rb"

  result1 = concat_array_of_strings(["aa", "bb", "zz"], " ")
  expected_output1 = ["aa bb zz "]
  result2 = check_number_of_arguments(["aa", "bb", "zz", " "])
  expected_output2 = true
  array = []
  (result1 == expected_output1) ? array.push(1) : array.push(2)
  (result2 == expected_output2) ? array.push(1) : array.push(2)
end

def test4 ()
  require_relative "air03.rb"

  result1 = puts_the_intruders(["1", "1", "2" ,"2" ,"3"])
  expected_output1 = "3"
  array = []
  (result1 == expected_output1) ? array.push(1) : array.push(2)
end

def test5 ()
  require_relative "air04.rb"

  result1 = put_arg_with_no_repeat("aa bb zz")
  expected_output1 = "a b z"
  array = []
  (result1 == expected_output1) ? array.push(1) : array.push(2)
end

def test6 ()
  require_relative "air05.rb"

  result1 = put_result_of_operation(["1","2","3"], "+2")
  expected_output1 = [3, 4, 5]
  result2 = check_arguments(["1", "2" ,"3","+2"])
  expected_output2 = true
  array = []
  (result1 == expected_output1) ? array.push(1) : array.push(2)
  (result2 == expected_output2) ? array.push(1) : array.push(2)
end

def test7 ()
  require_relative "air06.rb"

  result1 = put_non_infected_strings(["aa","ee","ff"], "e")
  expected_output1 = ["aa", "ff"]
  result2 = check_arguments(["aa","ee","ff","f"])
  expected_output2 = true
  array = []
  (result1 == expected_output1) ? array.push(1) : array.push(2)
  (result2 == expected_output2) ? array.push(1) : array.push(2)
end

def test8 ()
  require_relative "air07.rb"

  result1 = sorted_insert(["1","3","5"],"2")
  expected_output1 = ["1","2","3","5"]
  array = []
  (result1 == expected_output1) ? array.push(1) : array.push(2)
end

def test9 ()
  require_relative "air08.rb"

  result1 = sorted_fusion(["10","20","30"],["15","25","35","aa"])
  expected_output1 = ["10","15","20","25","30",["35"]]
  result2 = check_arguments(["10","20","30","fusion","15","25","35"])
  expected_output2 = true
  array = []
  (result1 == expected_output1) ? array.push(1) : array.push(2)
  (result2 == expected_output2) ? array.push(1) : array.push(2)
end

def test10 ()
  require_relative "air09.rb"

  result1 = my_rotation(["a","z","e","r"])
  expected_output1 = ["z","e","r","a"]
  array = []
  (result1 == expected_output1) ? array.push(1) : array.push(2)
end

def test11 ()
  require_relative "air10.rb"

  result1 = read_file("test")
  expected_output1 = "Bonjour"
  array = []
  (result1 == expected_output1) ? array.push(1) : array.push(2)
end

def test12 ()
  require_relative "air11.rb"

  result1 = draw_pyramid("@","2")
  expected_output1 = [" @ ","@@@"]
  array = []
  (result1 == expected_output1) ? array.push(1) : array.push(2)
end

def test13 ()
  require_relative "air12.rb"

  result1 = my_quick_sort([6,5,4,3,2,1])
  expected_output1 = [1,2,3,4,5,6]
  array = []
  (result1 == expected_output1) ? array.push(1) : array.push(2)
end

(1..13).each do |i|
  if send("test#{i}")
    returned_value = send("test#{i}")
    if returned_value.length == 1
      (returned_value[0] == 1) ? (puts "#{COLOR_GREEN}air#{i} (1/1) : success#{COLOR_RESET}"; @number_of_test_successful += 1) : (puts "#{COLOR_RED}air#{i} (1/1) : failure#{COLOR_RESET}")
    else
      (returned_value[0] == 1) ? (puts "#{COLOR_GREEN}air#{i} (1/2) : success#{COLOR_RESET}"; @number_of_test_successful += 1) : (puts "#{COLOR_RED}air#{i} (1/2) : failure#{COLOR_RESET}")
      (returned_value[1] == 1) ? (puts "#{COLOR_GREEN}air#{i} (2/2) : success#{COLOR_RESET}"; @number_of_test_successful += 1) : (puts "#{COLOR_RED}air#{i} (2/2) : failure#{COLOR_RESET}")
    end
  end
  sleep(0.1)
end

puts "..."
puts "Total success: (#{@number_of_test_successful}/18)"
