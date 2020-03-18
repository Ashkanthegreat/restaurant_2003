class Restaurant
  attr_reader :opening_time, :name, :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours_open)
    (@opening_time.chomp(':00').to_i + hours_open).to_s.concat(':00')
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    (@opening_time.chomp(':00').to_i) < 12
  end
end
