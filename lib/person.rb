class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(num)
        if num > 10
            @happiness = 10
        elsif num >= 0
            @happiness = num
        else 
            @happiness = 0
        end
    end

    def hygiene=(num)
        if num > 10
            @hygiene = 10
        elsif num >= 0
            @hygiene = num
        else 
            @hygiene = 0
        end
    end

    def clean?
        self.hygiene > 7 ? true : false
    end

    def happy?
        self.happiness > 7 ? true : false
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        happy_increase = 0
        phrase = ""
        if topic == "politics"
            happy_increase = -2
            phrase = "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            happy_increase = 1
            phrase = "blah blah sun blah rain"
        else
            phrase = "blah blah blah blah blah"
        end
        self.happiness += happy_increase
        friend.happiness += happy_increase
        phrase
    end

end

