def intcode_program(ints)
  (0...ints.length).step(4) do |address|
    case ints[address]
    when 1
      ints[ints[address + 3]] = ints[ints[address + 1]] + ints[ints[address + 2]]
    when 2
      ints[ints[address + 3]] = ints[ints[address + 1]] * ints[ints[address + 2]]
    when 99
    end
  end
  ints[0]
end

def parse(input)
  input.split(',').map { |int| Integer(int) }
end

if $0 == __FILE__
  input = IO.read("day02_input.txt")
  ints = parse(input)
  copy = Array.new.replace(ints)
  copy[1] = 12
  copy[2] = 2
  puts intcode_program(copy)

  (0..99).each do |noun|
    (0..99).each do |verb|
      copy = Array.new.replace(ints)
      copy[1] = noun
      copy[2] = verb
      puts 100 * noun + verb if intcode_program(copy) == 19690720
    end
  end
end


