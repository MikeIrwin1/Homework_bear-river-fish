class Bear

  attr_reader :name, :type, :stomach, :count

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
    @count = 0
  end

  def eat(river)
    @stomach << river.get_fish
    return @count += 1
  end

  def roar
    return "Roooaaaar"
  end

end
