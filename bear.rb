class Bear

  attr_reader :name, :type, :stomach, :count

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
    @count = 0
  end

  def eat(fish_object, river)
    for individual_fish in river.fish
      if individual_fish == fish_object
        @stomach << individual_fish
        river.fish.delete(individual_fish)
      end
    end
    return @count += 1
  end

  def roar
    return "Roooaaaar"
  end

end
