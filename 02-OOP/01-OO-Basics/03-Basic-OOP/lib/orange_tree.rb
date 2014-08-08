class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)
  attr_accessor:height
  attr_accessor:age
  attr_accessor:dead?
  attr_accessor:fruits

  def initialize(height, age, dead)
    @height = height || 0
    @age = age || 0
    @dead = dead || false
  end

  def one_year_passes!
    @fruits = 0
    @age = age+1
    if age < 5
      @height = @height+1
    elsif @age >= 5 && @age < 10
      @fruits +=100
      @height = @height+1
    elsif @age >=10 && @age < 15
      @fruits+= 200
    elsif @age > 50
      test = rand(1..10).round
      if test > 10
        @alive = false
      end
    elsif @age > 100
      @alive = false
    end
  end

  def pick_a_fruit!
    if @fruits > 0
      @fruits -=1
    end
  end

end
