class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
 end

 def planet_names
   @planets.map { |planet| planet.name }
 end

 def get_planet_by_name(planet_name)
   @planets.find do |planet|
     planet.name == planet_name

   end
 end

 def get_largest_planet
   largest_planet = @planets.sort_by { |planet| planet.diameter}
     return largest_planet.last

 end

 def get_smallest_planet
   largest_planet = @planets.sort_by { |planet| planet.diameter}
     return largest_planet[0]

 end

 def get_planets_with_no_moons
   planets.find_all { |planet| planet.number_of_moons == 0 }

 end

  def get_planets_with_more_moons(number)
    found_planets = @planets.find_all do |planet|
       planet.number_of_moons > number

     end
     found_planets.map { |planet| planet.name }
  end

  def get_number_of_planets_closer_than(distance)
    result = planets.find_all {|planet| planet.distance_from_sun < distance }
    result.length
  end

  def get_total_number_of_moons
    @planets.reduce(0) { |sum, planet| sum + planet.number_of_moons }
  end

  def get_planet_names_sorted_by_increasing_distance_from_sun
    result = @planets.sort_by { |planet| planet.distance_from_sun}
    result.map { |planet| planet.name }
  end

  def get_planet_names_sorted_by_size_decreasing
    result = @planets.sort_by { |planet| planet.diameter}
    result2 = result.map { |planet| planet.name }
    result2.reverse
  end

end
