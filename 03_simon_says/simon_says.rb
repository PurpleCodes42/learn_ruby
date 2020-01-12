#write your code here

def echo words
    words
end

def shout words
    words.upcase
end

def repeat word, times = 2
    word_list = [word]
    while times > 1 do
        word_list << word 
        times -= 1
    end
    word_list.join(" ")
end

def start_of_word word, start 
    word[0,start]
end

def first_word sentence
    sentence.partition(" ").first
end

def titleize word
    little_words = ["and", "the", "over"]
    if word.include? " "
        parts = word.split(" ")
        for i in 0...parts.length do
            is_little = false
                if i == 0
                    is_little = false
                elsif i > 0
                    for j in 0...little_words.length do
                        if parts[i].include?(little_words[j])
                          is_little = true
                    end
                end
            end
            if is_little == false
                parts[i] = parts[i].capitalize
            end
        end
        parts.join(" ")
    else
        word.capitalize
    end
end
