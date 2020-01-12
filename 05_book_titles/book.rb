# write your code here

class Book
    def title=(title)
        @title = titleize title
    end

    def title 
        @title
    end

    def titleize word
        little_words = ["and", "the", "over", "in", "the", "of", "a", "an"]
        if word.include? " "
            parts = word.split(" ")
            for i in 0...parts.length do
                is_little = false
                    if i == 0
                        is_little = false
                    elsif i > 0
                        for j in 0...little_words.length do
                            if parts[i] == little_words[j]
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
end


