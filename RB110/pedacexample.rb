=begin

Write a method that takes an array of consecutive letters as input and returns the missing letter.

p determine_missing_letter(['a','b','c','d','f']) == 'E'
p determine_missing_letter(['o','q','r','s']) == 'P'
p determine_missing_letter(['H','J','K','L']) == 'i'
p determine_missing_letter([]) == []

=end
=begin
P Return missing letter from input range of string elements in opposite case.
E 1 a..f => E
  2 o..s => P
  3 H..L => i
  4 empty => empty
  Rules : switch cases
          determine range 
            return missing element


D input : array of sinlge string elements, case important
  output : single string element, missing, element, oppostie case
  inter: array 

#A CREATE method with one parameter
  # CREATE alphabet Array
  # CREATE empty holder array 
  CREATE full range from first and last elements of input array,
  DELETE any elements in given array from the generated Array
  TRANSFORM remaining element case

C 
=end
def determine_missing_letter(array)
  return array if array.size < 1
  greater_array = (array[0]..array[-1]).to_a
  (greater_array - array)[0].swapcase
end

p determine_missing_letter(['a','b','c','d','f']) == 'E'
p determine_missing_letter(['o','q','r','s']) == 'P'
p determine_missing_letter(['H','J','K','L']) == 'i'
p determine_missing_letter([]) == []

=begin

Write a method that takes an array of consecutive letters as input and returns the missing letter.

p determine_missing_letter(['a','b','c','d','f']) == 'E'
p determine_missing_letter(['o','q','r','s']) == 'P'
p determine_missing_letter(['H','J','K','L']) == 'i'
p determine_missing_letter([]) == []

=end
=begin
P Return missing letter from input range of string elements in opposite case.
E 1 a..f => E
  2 o..s => P
  3 H..L => i
  4 empty => empty
  Rules : switch cases
          determine range 
            return missing element


D input : array of sinlge string elements, case important
  output : single string element, missing, element, oppostie case
  inter: array 

#A CREATE method with one parameter
  # CREATE alphabet Array
  # CREATE empty holder array 
  CREATE full range from first and last elements of input array,
  DELETE any elements in given array from the generated Array
  TRANSFORM remaining element case

C 

def determine_missing_letter(array)
  return array if array.size < 1
  greater_array = (array[0]..array[-1]).to_a
  (greater_array - array)[0].swapcase
end  

p determine_missing_letter(['a','b','c','d','f']) == 'E'
p determine_missing_letter(['o','q','r','s']) == 'P'
p determine_missing_letter(['H','J','K','L']) == 'i'
p determine_missing_letter([]) == []
=end

=begin
#PEDAC
#Problem
#takes an array of consecutive letters as input and returns the missing letter.
#input: array of String object elements
#output: single String object element


#Example/Test Case
# p determine_missing_letter(['a','b','c','d','f']) == 'E'
# p determine_missing_letter(['o','q','r','s']) == 'P'
# p determine_missing_letter(['H','J','K','L']) == 'i'
# p determine_missing_letter([]) == []

#Data Structure
#Arrays with string object elements

#Algorithm
#initialize an empty array object that contains all letters, `alphabet`
#fill `alphabet` with letters of the alphabet

#find the starting point of the array object passed in (the first element)

#find the index of that element in `alphabet`

#create an array object that 
#start at that index and compare the next _ (length of array passed in) elements to the array object.


#if there is a mismatch
#check the case of the array object passed
#if it's uppercase, return a lowercase version of the current `alphabet` element
#else return an uppercase version of the current `alphabet` element.


#Code
argument = ['a','b','c','d','f']
alphabet = ("a".."z").to_a

def find_starting_point(input)
  input[0]
end

def find_index_of_starting_point(argument, alphabet)
  alphabet.index(argument)
end

def find_length_of_array(array_obj)
  array_obj.size
end

first_element_in_array = find_starting_point(argument)

starting_point_index = find_index_of_starting_point(first_element_in_array, alphabet)

size_of_argument = find_length_of_array(argument)

def compare_elements(alphabet, argument_array, starting_index, )
  alphabet.each do |letter|
    


=end

=begin
blake

input: array containing single character strings
output: string
rules: 
explicit: 
input is an array of consecutive letters, minus one random letter
output the missing letter with reverse case as a string,
  ex: 'acd' 'B', 'ACD' 'b'

implicit: 
if array is empty, returns an empty array

algorithm:
compare array to the same consecutive letters
determine when the strings stop matching and output that string
if uppercase, change to lowercase
if lowercase, change to uppercase
if array is empty, return empty array

letter_array = ('A'.. 'Z') + ('a'..'z')

def determine_missing_letter(array)
  all_letters = ('A'.. 'Z').to_a + ('a'..'z').to_a
  arr = []
  all_letters.select do |letter|
    array
  end
end
=end

=begin
joshua
Write a method that takes an array of consecutive letters as input and returns the missing letter.

PROBLEM
We receive an array of letters in the alphabet in order, and are to return the first letter which is missing in the array

EXAMPLES
Rules
Return opposite case from input case
No need to begin at 'a'
If empty, return empty

DATA
Input: array of letters in order, not necessarily beginning with a
Output: string of 1 letter, first letter missing, and opposite case

ALG
set uppercase and lowercase arrays
set start variable to false
loop over arrays
  when we hit the first match, set variable start to true
  when we hit the first non-match, return that letter swapcase



def determine_missing_letter(arr)
  return arr if arr.empty?
  alphabet = ('A'..'Z').to_a
  alphabet << ('a'..'z').to_a
  alphabet.flatten!
  start = false
  alphabet.each do |letter|
    if arr.include?(letter) && start == false
      start = true
    elsif start == true && !arr.include?(letter)
      return letter.swapcase
    end
  end
end


p determine_missing_letter(['a','b','c','d','f']) == 'E'
p determine_missing_letter(['o','q','r','s']) == 'P'
p determine_missing_letter(['H','J','K','L']) == 'i'
p determine_missing_letter([]) == []
=end

=begin
udeshika
=begin

Write a method that takes an array of consecutive letters as input 
and returns the missing letter.

p determine_missing_letter(['a','b','c','d','f']) == 'E'
p determine_missing_letter(['o','q','r','s']) == 'P'
p determine_missing_letter(['H','J','K','L']) == 'i'
p determine_missing_letter([]) == []

Pro :
 i/p - an array of consecutive letters
 o/p - missing letter

 Rules: 
  - case must be swapped in the o/p
  - retun empty array if empty array is given as i/p

 E: 
p determine_missing_letter(['a','b','c','d','f']) == 'E'
  --> return upcase 'E'
p determine_missing_letter(['o','q','r','s']) == 'P'
-- > return upcase 'p'
p determine_missing_letter(['H','J','K','L']) == 'i'
p determine_missing_letter([]) == []

D:

Algo:
 - create an array of consective alphabet using support method
  - get start and end letter of input array and 
      generate alphabet 
 - iterate over input array 
  - compare each letter of the input array with generated alphabet
    - if the letter is included in the alphabet delete the letter
  -After all iterations, 
  - return first element of  alphabet with swapcase 



def determine_missing_letter(arr)
  return arr if arr.empty?
alphabet = create_alphabet(arr)
arr.each do |letter|
  if alphabet.include?(letter)
    alphabet.delete(letter)
  end
end
  alphabet.first.swapcase
 
end

def create_alphabet(arr)
  start_letter = arr[0]
  end_letter = arr[-1]
  alphabet = []
  (start_letter..end_letter).each do |char|
    alphabet << char
  end 
   alphabet
end 
=end

#---------------------------------------

=begin

 Pro: 
  i/p - string 
  O/p - same stirng but we have to remove every vowels after 3 vowels 


  Rules : 
  we have count vowels and remove every vowel grateter than 3
  - vowels - 'y'

  E:
three_vowels("tropical") == "tropical" 
  --> 

three_vowels("tropicalia") == "tropical"
---> [0,i,,a] -->o/p --"tropical"
three_vowels("BliMp123") == "BliMp123" 
-- [i,] --same word
three_vowels("eyelash2!!!") == "eyelsh2!!!" 
-- >[e,y,e] --

D:

Algo :
-- create a vowels 
 - create a varible to store vowels in the string
  -> varible to store result string
- iterate over the each letter string 
 -- check if the char is a vowel or not 
 ---if it is vowel 
   -take the vowel count of the string
   --> if the vowel count is > 3 delete the vowel from the string 
  if it is not a vowel char append to result String
    then return result string


=end

def three_vowels(str)
  vowels = %w(a e i o u y)
  str_vowels = []
  result_str = ''
  str.each_char do |char|
    if vowels.include?(char)
      str_vowels << char
      result_str << char if str_vowels.count < 3
    else 
      result_str << char
    end
  end
  result_str
end