# Dado un array de string reorganizalo en grupos de tres y ordénalos alfabéticamente.  
# Utiliza: Enumerable#each_slice
def sorted_triples(array)
		#array_slice is initialized
		array_slice = []
		#it organizes the items alphabetically in groups of 3
		array.each_slice(3) { |word| array_slice << word.sort }
		#result, string array is organized
		array_slice
end

#driver code...test
words = %w(De esta simple manera se puede reorganizar una oracion)  
p sorted_triples(words) == [["De", "esta", "simple"], ["manera", "puede", "se"], ["oracion", "reorganizar", "una"]]  