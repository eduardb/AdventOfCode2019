def fuel_for(mass)
  mass / 3 - 2
end

def recursive_fuel_for(mass)
  fuel = mass / 3 - 2
  return 0 if fuel <= 0
  fuel + recursive_fuel_for(fuel)
end

if $0 == __FILE__
  masses = IO.readlines("day01_input.txt")
  puts masses.map { |mass| fuel_for(Integer(mass)) }.reduce(:+)
  puts masses.map { |mass| recursive_fuel_for(Integer(mass)) }.reduce(:+)
end


