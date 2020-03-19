class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end

  def planet_names()
    return @planets.map {|planet| planet.name}
  end

  def get_planet_by_name(planet_name)
    return @planets.find {|planet| planet.name == planet_name}
  end

  def get_largest_planet
    return @planets.max_by { |planet| planet.diameter }
  end

  def get_smallest_planet()
    return @planets.min_by { |planet| planet.diameter}
  end

  def get_planets_with_no_moons()
    return @planets.select {|planet| planet.number_of_moons == 0}
  end

  def get_planets_with_more_moons(moons_number)
    planets_with_more_moons = @planets.select {|planet| planet.number_of_moons > moons_number}
    return planets_with_more_moons.map {|planet| planet.name}
  end

  def get_number_of_planets_closer_than(distance)
    planets_closer_than = @planets.select {|planet| planet.distance_from_sun < distance}
    return planets_closer_than.length
  end
  # could have used .count method

  def get_total_number_of_moons()
    total_moons = @planets.reduce(0){|total, planet| total + planet.number_of_moons}
    return total_moons
  end

  def get_planet_names_sorted_by_increasing_distance_from_sun()
    sorted_planets = @planets.sort_by {|planet| planet.distance_from_sun}
    return sorted_planets.map {|planet| planet.name}
  end
  # planet names by distance increasing use .sort_by. .map for names.

  def get_planet_names_sorted_by_size_decreasing()
    sorted_planets = @planets.sort_by {|planet| planet.diameter}.reverse
    return sorted_planets.map {|planet| planet.name}
  end
  # or use sort with 2 planets at a time <=>

end
