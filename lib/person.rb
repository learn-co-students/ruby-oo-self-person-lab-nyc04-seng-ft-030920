require "pry"

class Person

    attr_reader :name, :bank_account, :happiness, :hygiene


    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    
    def bank_account=(amount)
        @bank_account +=amount
    end

    def happiness=(index)
        if index > 10
            @happiness = 10
        elsif index < 0
            @happiness = 0
        else
            @happiness = index
        end
    end

def hygiene=(index)
    if index > 10
        @hygiene = 10
    elsif index < 0
        @hygiene = 0
    else
        @hygiene = index
    end
end

def happy?
    @happiness > 7 ? true : false

end

def clean?
    @hygiene > 7 ? true : false
end

def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
end

def take_bath
    hygiene=(self.hygiene +=4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
    
end

def work_out
    hygiene=(self.hygiene -=3)
    happiness=(self.happiness +=2)
    "♪ another one bites the dust ♫"
end

#def call_friend(friend)
 #   return if friend.class != Person
  #  happiness=(self.happiness +=3)
   # friend.happiness=(friend.happiness +=3)
    
#end

def call_friend(friend)
    [friend, self].each {|o| o.happiness += 3 }
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    objects = [self, person]
    if topic == "politics"
      objects.each { |o| o.happiness -= 2}
      first, second = ["partisan", "lobbyist"]
    elsif topic == "weather"
      objects.each { |o| o.happiness += 1}
      first, second = ["sun", "rain"]
    end
    first ||= "blah"
    second ||= "blah"
    base_string = "blah blah #{first} blah #{second}"
  end


end


