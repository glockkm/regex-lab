def starts_with_a_vowel?(word)
    if word.scan(/^[aeiouAEIOU]/).empty? # ^ for first letter # [all vowels lower and upper case]
        false # scan returns anything that matches above regex. So if return is empty = means no vowels so false
      else
        true # if above regex returns something, true does start with a vowel
    end
    # if word.start_with?('a','e','i','o','u','A','E','I','O','U')
    #     return true 
    # else 
    #     return false
    # end
end



def words_starting_with_un_and_ending_with_ing(text)
    words = text.split(" ") # split text every place where there is a space
    words.grep(/^un\w+ing$/) # grep returns elements from arrays and hashes that match given pattern
end # first of words = ^un # w is any letter of ing # $ is end of string



def words_five_letters_long(text)
    words = text.split(" ")
    words.grep(/\b\w{5}\b/) # b is a word boundary # w{5} for 5 letters
end



def first_word_capitalized_and_ends_with_punctuation?(text)
    if text.scan(/^[A-Z][\s\S]+\.$/).empty?
# ^ first # [range A-Z all caps] # \s = any Unicode separator # \S = one character that is not a whitespace character
# \. = a period character # $ end of string    
        false # scan returns matches so if empty = false no forst word capitalized and ends with punctuation
    else
        true
    end
    # text.match(/^[A-Z].*[a-zA-Z][.]$/) ? true : false
end



def valid_phone_number?(phone)
    phone.scan(/\b\(?\d{3}\)?\s?-?\d{3}-?\s?\d{4}\b/).empty? ? false : true
    # \b is boundary # ? = once or none # \d{3} = 3 digits # () are groups
    # \s any unicode separator
    # ? false : true = shorthand for the if loop
end
