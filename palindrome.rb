class Palindrome
	# Two variables with read only access
	# string is the input string upon initialization
	# is_palindrome stores whether string is a palindrome
	attr_reader :string, :is_palindrome
	
	def is_palindrome?(str)
		str == str.reverse
	end
end