# your code goes here
class Person
    attr_reader :name, :hygiene
    attr_accessor :bank_account, :happiness

    def initialize(name)
        @name = name
        @bank_account =25
        @happiness = 8
        @hygiene = 8
    end
    
    def happiness=(value)
        @happiness = value
        if @happiness >= 10
            @happiness = 10
        elsif @happiness < 10 && @happiness > 0
            @happiness = value
        elsif @happiness <= 0
            @happiness = 0
        end
        end

        def hygiene=(value)
            @hygiene = value
            if @hygiene >= 10
                @hygiene =10
                elsif @hygiene <= 0
                    @hygiene = 0
            end
            end
            
            
            def happy?
                self.happiness > 7 ? true : false
            end

            def clean?
                self.hygiene > 7 ? true : false
            end

            def get_paid(amount)
                self.bank_account += amount
                return "all about the benjamins"
            end

            def take_bath
                self.hygiene += 4
                return "♪ Rub-a-dub just relaxing in the tub ♫"
            end 

            def work_out
                self.happiness += 2
                self.hygiene -= 3
                return "♪ another one bites the dust ♫"
            end

            def call_friend(friend)
                self.happiness += 3
                friend.happiness += 3
                return "Hi #{friend.name}! It's #{self.name}. How are you?"
            end
            
            def start_conversation(friend, topic)
                if topic == 'politics'
                    self.happiness -= 2
                    friend.happiness -= 2
                    return "blah blah partisan blah lobbyist"
                    elsif topic == "weather"
                        self.happiness += 1
                        friend.happiness += 1
                        return 'blah blah sun blah rain'
                    else 
                        return "blah blah blah blah blah"
                end

            end

end