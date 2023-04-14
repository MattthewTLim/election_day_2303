class Election

  attr_reader :year

  def initialize(year)
    @year = year
    @races = {}
  end

  def races
    @races
  end
  
  def add_race(race)
    @races[race.office] = race
  end

end