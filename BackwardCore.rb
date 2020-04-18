class BackwardCore
    def Backwarder(string)
        begin
            return string.reverse
        rescue => exception
            return ""
        end
    end
end