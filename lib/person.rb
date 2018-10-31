require "pry"

class Person

  attr_reader :name
  attr_accessor :bank_account, :hygiene, :happiness



  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def check_points (points)
    if points > 10
      return 10
    elsif points < 0
      return  0
    else
      return points
    end
  end


  def happiness= (num)
    @happiness = check_points(num)
  end

  def hygiene= (num)
    @hygiene = check_points (num)
  end

  def clean?
    if @hygiene > 7
      return true
    else
      return false
    end
  end

  def happy?
    if @happiness > 7
      return true
    else
      return false
    end
  end

  def get_paid (num)
    @bank_account += num
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene= (@hygiene + 4)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness= (@happiness + 2)
    self.hygiene= (@hygiene - 3)
    return "♪ another one bites the dust ♫"
  end

  def call_friend (friend)
    friend.happiness= (friend.happiness + 3)
    self.happiness= (@happiness + 3)
    return "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation (person, topic)
    if topic == "politics"
      person.happiness= (person.happiness - 2)
      self.happiness= (@happiness - 2)
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      person.happiness= (person.happiness + 1)
      self.happiness= (@happiness + 1)
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end


end
