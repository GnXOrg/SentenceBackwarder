require './BackwardCore.rb'
puts "Welcome to SentenceBackwarder (v20.04.18)"
def SentenceBackwarder()
    puts "Type a sentence below to backward it"
    sentence = gets.chomp
    if (sentence.length <= 1)
        puts "Length must be 2 or higher to backward!"
        answ = askForContinue()
        if answ then
            SentenceBackwarder()
        else
            return
        end
    else
        backwardCore = BackwardCore.new
        reversedSentence = backwardCore.Backwarder(sentence)
        if reversedSentence == "" then
            puts "Failed to backward the sentence."
        else
            puts "Backwarded sentence: #{reversedSentence}"
        end
        answ = askForContinue()
        if answ then
            SentenceBackwarder()
        else
            return
        end
    end
end

def askForContinue()
    puts "Do you want to backward more sentence? (Y/N)"
    answer = gets.chomp.downcase
    if (answer == "y")
        return true
    elsif (answer == "n")
        puts "Thank you for using SentenceBackwarder! Made by GnXOrg"
        return false
    else
        puts "Invalid choice! Please try again"
        askForContinue()
    end
end    
SentenceBackwarder()

