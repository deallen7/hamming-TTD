class Hamming

  def self.compute(first_nucleotide_sequence, second_nucleotide_sequence)
  	
    if first_nucleotide_sequence == second_nucleotide_sequence
	  return 0 #no difference!
	elsif first_nucleotide_sequence.length != second_nucleotide_sequence.length
	  raise ArgumentError.new("To be comparable, the nucleotide sequences must be the same length")
	else 
	  first_nucleotide_array = first_nucleotide_sequence.split(//)
	  second_nucleotide_array = second_nucleotide_sequence.split(//)
	  #turns string into array, i.e. first_array = ["A", "B", "C"] and second_array = ["B", "C", "D"]	
	  i = 0
	  hamming_counter = [] #will store differences in an array 
	  while i < first_nucleotide_array.length
	    if first_nucleotide_array[i] != second_nucleotide_array[i]
		  hamming_counter << 'D'
		end
		i += 1
	end

	return hamming_counter.length
    end
  end
end 

module BookKeeping
 VERSION = 3 # Where the version number matches the one in the test.
end