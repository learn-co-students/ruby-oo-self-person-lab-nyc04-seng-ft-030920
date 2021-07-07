# your code goes here
class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(num)
        @happiness = num
        @happiness = 10 if num > 10
        @happiness = 0 if num < 0
    end

    def hygiene=(num2)
        @hygiene = num2
        @hygiene = 10 if num2 > 10
        @hygiene = 0 if num2 < 0
    end

    def happy?
        happiness > 7
    end

    def clean?
        hygiene > 7
    end

    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        '♪ another one bites the dust ♫'
    end

    def call_friend(friends_name)
        self.happiness += 3
        friends_name.happiness += 3
        "Hi #{friends_name.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        people = [self, person]
        if topic == "politics"
            people.each {|human| human.happiness -= 2}
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            people.each { |o| o.happiness += 1}
            "blah blah sun blah rain"
        else 
            'blah blah blah blah blah'
        end

    end

end
