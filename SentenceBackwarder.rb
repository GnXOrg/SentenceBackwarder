# Add the file
puts "Welcome to SentenceBackwarder (v20.04.18)"
def SentenceBackwarder()
    puts "Type a sentence below to backward it"
    sentence = gets.chomp
    if (sentence.length <= 1)
        puts "Length must be 2 or higher to backward!"
    else
        begin
            puts "Backwarded sentence: #{sentence.reverse}"
            puts "Do you want to backward more sentence? (Y/N)"
            # Incomplete
        rescue => exception
            
        end
    end
end

def askForContinue()
# Placeholder
end    