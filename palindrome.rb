#This adds a new is_palindrome? method to the open Ruby String class.  By adding to the 
#Ruby String class, all standard error checking methods are available for strings and
#this method will only be available to String inputs.
#
#This method was implemented with the following constraints:
#"Implement a function to determine if a string is a palindrome
#- ...using a constant amount of memory
#- ...accessing each character in the string only once"
#
#The requirement to use a constant amount of memory prevents use of the simple method:
#
#	def is_palindrome?
#		return self == self.reverse
#	end
#
#This is good to avoid to allow for efficient memory use when analyzing extremely large strings as the above method would double the memory requirement 
#by creating a new string of equal size but reversed.
#
#The requirement to access each character only once is also beneficial as this will prevent uncessary searching
#and iterating espcially for extremely large strings and thereby decrease computational time.
#
#Author::		Carl Andrew Menning 
#Version::		0.0.1
#License::		Distributed under the same terms as Ruby
class String
	#The is_palindrome? method returns a boolean true/false depending on if the string
	#being test is spelled the same forwards and backwards, regardless of case.  This method
	#allows all characters to be analyzed, such as special characters, to be included in the analysis.
	#This assumes that the test string has been stripped of all unwanted white space  or characters before being tested.
	#
	#*Args*	  :
	#- String object receiver -> test string containing characters to be analyzed
	#*Returns* :
	#- true if the string characters are symmetric with respect to the middle of the string
	#- false if the string is empty or is not symmetric
	#*Raises*  :
	#- This method contains no additional error checking
	def is_palindrome?
		# Assign receiver String object to test_string
		test_string = self
		
		# Determine the length of the String to allow middle to be determined; return false if empty
		str_length = test_string.length
		return false unless str_length > 0
		
		# The following range calculation will work for both odd and even strings
		# Note this uses integer division and any decimal will be stripped automatically by Ruby
		# Since odd length strings do not need the middle character to be analyzed, this will be skipped with the following code
		mid_point = (0..(str_length/2-1))
		# The following loop only accesses each character once and ensures all characters are lower case for comparison
		for index in mid_point	
			char_left = test_string[index].downcase
			char_right = test_string[str_length-index-1].downcase
			if char_left!=char_right
				return false
			end
		end
		return true
	end
end