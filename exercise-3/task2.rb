def combine_lists first_list, second_list
	[first_list, second_list].transpose
end

list1 = ['a', 'b', 'c']
list2 = [1, 2, 3]

puts combine_lists(list1, list2)