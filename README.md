# What's Palindrome

This adds a new is_palindrome? method to the open Ruby String class.  By adding to the 
Ruby String class, all standard error checking methods are available for strings and
this method will only be available to String inputs.

## Features of Palindrome

*   This palindrome method is a custom method with the following constraints
*   using a constant amount of memory
*   accessing each character in the string only once
*	case is ignored for all letters
*   allows for all special characters to be included

## How to use

This is what you need to do to use this custom is_palindrome? method:

1.  Ensure you have ruby installed on your machine

2.  Download this repository and require the palindrome.rb file in your program

3.  Make an is_palindrome? method call on a string object

```bash
# Require the palindrome.rb file in your program with the correct pathname
require './palindrome'

# Call the is_palindrome? method on any string object to return true if string is symmetric with all characters
'abba'.is_palindrome? # This will return true
'aBbA'.is_palindrome? # This will return true as case is ignored
'123aBbA321'.is_palindrome? # This will return true as all characters are allowed
'abcde'.is_palindrome? # This will return false
```

## The Author

This custom is_palindrome? String method was created by Carl Andrew Menning