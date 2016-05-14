require 'simplecov'
SimpleCov.start

require './palindrome'

describe "is_palindrome? method" do
	it "is an added method to the open Ruby String class" do
		test_string = String.new
		expect(test_string).to respond_to(:is_palindrome?)
	end
	
	it "is not added to other classes such as Fixnum" do
		test_num = 13
		expect(test_num).not_to respond_to(:is_palindrome?)
	end	
	
	it "correctly identifies an even palindrome" do
		test_string = 'abba'
		expect(test_string.is_palindrome?).to be true
	end	

	it "correctly identifies an odd palindrome" do
		test_string = 'abcba'
		expect(test_string.is_palindrome?).to be true
	end
	
	it "correctly identifies an even word as not a palindrome" do
		test_string = 'abcd'
		expect(test_string.is_palindrome?).to be false
	end
	
	it "correctly identifies an odd word as not a palindrome" do
		test_string = 'abcde'
		expect(test_string.is_palindrome?).to be false
	end		
	
	it "does not care about letter case and correctly identifies palindrome" do
		test_string = 'AbBa'
		expect(test_string.is_palindrome?).to be true
	end
	
	it "allows special characters to be present and correctly identifies palindrome" do
		test_string = '123AbBa321'
		expect(test_string.is_palindrome?).to be true
	end	
end