# Write your code here.

def badge_maker(name) 
  "Hello, my name is #{name}."
end

def batch_badge_creator(names)
  badge_messages = []
  names.each do |name|
    badge_messages.push(badge_maker(name))
  end
  badge_messages
end

def assign_rooms(names)
  room_assignments = []
  names.each_with_index do |name, index|
    room_assignments.push(
      "Hello, #{name}! You'll be assigned to room #{index + 1}!" 
    )
  end
  room_assignments
end

def printer(names)
  batch_badge_creator(names).each do |badge_message|
    puts badge_message
  end
  assign_rooms(names).each do |room_assignment|
    puts room_assignment
  end
end