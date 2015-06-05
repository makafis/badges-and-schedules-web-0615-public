def badge_maker(name)

"Hello, my name is #{name}."

end




def batch_badge_creator(attendees)

  attendees.collect do |person|
    badge_maker(person)
  end


end



def assign_rooms(attendees)
  attendees.collect do |attendee|
  "Hello, #{attendee}! You'll be assigned to room #{attendees.index(attendee) + 1}!"
  end

end




def printer(attendees)
  new_array = []

  new_array = assign_rooms(attendees)
  counter = 0
  while counter < attendees.length
    puts new_array[counter]

    counter += 1
  end
  counter2 = 0
  new_array2 = []
  new_array2 = batch_badge_creator(attendees)
  while counter2 < attendees.length
    puts new_array2[counter2]
    counter2 += 1
  end

end


