# Travel Time #

# Creates 3 arrays that hold min-max mph
bicycle = [5, 15]
car = [20, 70]
plane = [400, 600]

# Asks user to input a number
puts "Pick a vehicle\n1. Bicycle\n2. Car\n3. Jet Plane"
vehicle = gets.to_i
# Loops if input is invalid
while (vehicle < 1 or vehicle > 3)
  puts "Invalid choice.\nPick a vehicle\n1. Bicycle\n2. Car\n3. Jet Plane"
  vehicle = gets.to_i
end

# Switch case that assigns appropriate array to vehicle
case vehicle
when 1
  vehicle = bicycle
when 2
  vehicle = car
else
  vehicle = plane
end

# miles: miles tracker
# max_speed: maximum speed vehicle goes
# time: keeps track of iterations; same as number of hours
miles = max_speed = time = 0

until miles >= 1000
  # mph: holds random integer between min-max values of selected vehicle
  mph = rand(vehicle[0]..vehicle[1])
  miles += mph
  # Sets new max speed if mph > max_speed
  if (max_speed < mph)
    max_speed = mph
  end
  time += 1
end

print "The number of hours it took to travel 1000 miles was ", time, " hours.\n"
print "The maximum speed was ", max_speed, " mph.\n"
