class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def hygiene=(num)
        @hygiene = num
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
    end 

    def happiness=(num)
        @happiness = num
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
    end

    def happy?
        happiness > 7
    end

    def clean?
        hygiene > 7
    end

    def get_paid(salary)
        self.bank_account += salary
        self.happiness += 1
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return '♪ another one bites the dust ♫'
    end

    def start_conversation(friend, topic)
        objects = [self, friend]
        if topic == "politics"
            objects.each do |i|
                i.happiness -=2
            end
            first, second = ['partisan', 'lobbyist']
        elsif topic == "weather"
            objects.each do |i|
                i.happiness += 1
            end
            first, second = ["sun", "rain"]
        end
        first ||= "blah"
        second ||= "blah"
        base_string = "blah blah #{first} blah #{second}"
        
    end

    def call_friend(friend)
        # call a friend adjust both callers and recievers happiness
        # friend.happiness += 3
        # self.happiness += 3
        [friend, self].each do |i|
            i.happiness += 3
        end
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
        
    end
end
