# Créez un programme qui fusionne deux listes d’entiers triées en les gardant triées, les deux listes seront séparées par un “fusion”.


def merge_list(arguments)
  splitter = arguments.index("fusion")
  splitter_down = splitter - 1
  splitter_up = splitter + 1
  list1 = arguments[0..splitter_down]
  list2 = arguments[splitter_up..]
  list1 = list1.sort
  list2 = list2.sort

  if splitter > 0
    merged_list = list1 + list2
    result = merged_list.sort.join(' ')
    puts result
  else
    puts "Error"
    return
  end
end

arguments = ARGV

merge_list(arguments)

if $PROGRAM_NAME == __FILE__
    check_arguments(ARGV) ? (p my_quick_sort(ARGV.map(&:to_i))) : exit(1)
end
