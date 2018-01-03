# Exercise
rooms = { data: { rooms:
    [ { id: 1, room_number: "201", capacity: 50}, { id: 2, room_number: "301", capacity: 200 }, { id: 3, room_number: "1B", capacity: 100}
    ],
    events: [
      { id: 1, room_id: 2, start_time: 18, end_time: 20, attendees: 75 },
      { id: 2, room_id: 1, start_time: 10, end_time: 18, attendees: 25 },
      { id: 3, room_id: 2, start_time: 10, end_time: 18, attendees: 20 },
      { id: 4, room_id: 3, start_time: 18, end_time: 21, attendees: 56 },
    ]
  }
}
#1
capacity = 0
rooms[:data][:rooms].each {|room|
  if room[:room_number] == '201'
    capacity = room[:capacity]
  end
}
#2
# Get id for room 201
id = nil
rooms[:data][:rooms].each {|room|
  if room[:room_number] == '201'
    id = room[:id]
  end
}
# Find events taking place in room 201
events = []
rooms[:data][:events].each {|event|
  if event[:room_id] = id
    events << event
  end
}
# If attendees are under room capacity, print ok
events.each {|event|
  if event[:attendees] <= capacity
    puts "ok"
  end
}
