=begin

=>INTRODUCTIONS
1. Name
2. Place in course
3. Particular questions / topics of interest
4. Icebreaker: Where are you?

=>SPOT WIKI: https://fine-ocean-68c.notion.site/SPOT-Wiki-b58ff38ab84440bdb96797e59ee5fd34

=>TOPICS (ABRIDGED)
Different types of collections
Nested collections
Referencing specific elements in a collection
Looping and iterating over collections, including nested collections
Selection from collections
Transformation of collections
Sorting collections
Passing blocks to iterative methods
Shallow copy vs. deep copy
Method chaining
PEDAC, live problem solving

=>TOPICS FOR TODAY
- nested/chained input validation (ie, operating on only very specific elements of collection)

=end

=begin
we're receiving a set of messages in code. The messages are sets of text strings, like:
"alakwnwenvocxzZjsf"
Write a method to decode these strings into numbers. The decoded number should be the number of lowercase characters between the first two uppercase characters. If there aren't two uppercase characters, the number should be 0.
=end

def decode(messages)
  messages.map do |message|
    message_characters = message.chars
    valid_length = message.length > 2

    # p valid_length

    if valid_length
      first_idx = message_characters.index do |letter|
        letter == letter.upcase
      end
      if first_idx
        second_idx = message_characters[(first_idx + 1)..-1].index do |letter|
          letter == letter.upcase
        end
        if second_idx
          second_idx += first_idx
        end
      end
    end

    # p first_idx
    # p second_idx

    if second_idx
      message_characters[first_idx...second_idx].count
    else
      0
    end
  end
end


p decode(['ZoL', 'heLlo', 'XX']) == [1, 0, 0]
p decode(['foUrsCoreAnd', 'seven', '']) == [2, 0, 0]
p decode(['lucYintheskyWith', 'dIaMonDs']) == [8, 1]
p decode([]) == []



=begin
Write a function, negate, that converts all “yes” words to "no" 
and "no" words to "yes" in a sentence. The comparison for "yes" 
and "no" should be case insensitive."yes" and "no" should be negated
even if ending with `.`, `?`, `,`, or `!`.
=end

YES_NO_WORDS = {
  'yes' => 'no',
  'Yes' => 'No',
  'YEs' => 'No',
  'YES' => 'NO',
  'yES' => 'nO',
  'yeS' => 'nO',
  'yEs' => 'nO',
  'YeS' => 'No'
}

def yes_no_swap(sentence)
  words = sentence.split

  new_words = words.map do |word|
    word_downcased = word.downcase
    no_punctuation = word_downcased.delete('.,?!')

    if (no_punctuation == 'yes' &&
        word_downcased.start_with?('yes'))
        yes_casing = word[0, 3]
        next word.sub(yes_casing, YES_NO_WORDS[yes_casing])
    elsif no_punctuation == 'no'
      if word_downcased.start_with?('no')
        no_casing = word[0, 2]
        next word.sub(no_casing, YES_NO_WORDS.key(no_casing))
      end
    end

    word
  end

  new_words.join(' ')
end

p yes_no_swap("Yes it is")
p yes_no_swap("Huh? No!")
p yes_no_swap("NO YOU CAN'T")
p yes_no_swap("nO! !!yeS! !NO")