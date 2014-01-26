module BooksHelper

# feather_width = 3

# def all_annotations(book)

	# return nil

# end

# def words(book)

	# str = book.text
	# str.gsub(/\s+/m, ' ').strip.split(" ")
	# return str
	
# end

# def regions(book)

	# markers = Array.new(words(book).size, 0)

	# for i in 0..words(book).size
		# a = book.all_annotations(book)[i]
		
		# if abs(a.location_start - i) <= feather_width
			# markers[i]++
		# end
		
	# end
	
	# regions = Array.new #indices at which annotation regions END
	
	# region_found = false
	# greatest = 0
	# for i in 0..words(book).size
		# greatest = max(greatest, markers[i])
		
		# if markers[i] > 0 and not region_found
			# region_found = true
		# end
		
		# if region_found and markers[i] == 0
			# markers[i-1] = greatest
			# regions << i-1  # note: num of annotations in region[n] is markers[region[n]-1]
			# region_found = false
		# end
		
	# end

# end

end