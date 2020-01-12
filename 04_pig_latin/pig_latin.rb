#write your code here
$i = 0

def translate_word word
    if word[$i] == "u" && word[$i-1] == "q"
        $i += 1
        translate_word word
    elsif is_vowel word[$i]
        term = pig_latin word, $i
        $i = 0
        return term
    else 
        $i += 1
        translate_word word
    end
end

def is_vowel thing
    vowels = ["a", "e", "i", "o", "u"]
    for i in 0...vowels.length do
        if thing == vowels[i]
            return true
        end
    end
    return false
end

def translate term
    if term.include? " "
        translation = []
        parts = term.split(" ")
        for i in 0...parts.length do
            translated_word = translate_word parts[i]
            translation << translated_word 
        end
        translation.join(" ")
    else
        translate_word term
    end
end

def pig_latin word, letter_count
    word[letter_count, word.length] + word[0,letter_count] + "ay"
end