# your code goes here
class Person
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    attr_accessor :bank_account
    # attr_accessor :hygiene
    # attr_accessor :happiness

    def name
        @name
    end

    def bank_account
        @bank_account
    end

    def hygiene
        @hygiene
    end

    def hygiene=(hygiene)
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        else
            @hygiene = hygiene
        end
    end

    def happiness
        @happiness
    end

    def happiness=(happiness)
        if happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        else
            @happiness = happiness
        end
    end

    def clean?
        self.hygiene > 7 ? true : false
    end

    def happy?
        self.happiness > 7 ? true : false
    end

    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        if self.hygiene > 10
            self.hygiene = 10
        end
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        if self.happiness > 10
            self.happiness = 10
        end
        if self.hygiene < 0
            self.hygiene = 0
        end
        "♪ another one bites the dust ♫"
    end
    
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        if self.happiness > 10
            self.happiness = 10
        end
        if friend.happiness > 10
            friend.happiness = 10
        end
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            if self.happiness < 0
                self.happiness = 0
            end
            if person.happiness < 0
                person.happiness = 0
            end
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            if self.happiness > 10
                self.happiness = 10
            end
            if person.happiness > 10
                person.happiness = 10
            end
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end