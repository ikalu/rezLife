options = ["New Freshman", "Freshman", "Transfer Student", "Sophomore", "Re-Admitted Student", "Junior", "Graduate Student", "Senior"]

options.map do |option|
  StudentClassification.find_or_create_by(classification: option)
end

residential_halls = ["Asbury - Female - Freshmen", "Corson - Female - Freshmen", "Claflin Commons 1 - Male - Junior and Senior", "Claflin Commons 2 - Female - Junior and Senior", "Dunton - Female - Sophomore, Junior, Senior", "Kleist - Female - Honor's College", "High Rise - Male - Freshmen, Sophomore, Junior, Senior", "SRC East - Female - Junior, Senior", "SRC North - Female - Junior, Senior", "SRC South - Male - Honors College, Senior", "SRC West - Female - Junior, Senior"]

residential_halls.map do |residential_hall|
  Hall.find_or_create_by(name: residential_hall)
end

#halls = Hall.all
#halls.map do |hall|
#  hall.number_of_rooms.times do |room_number|
#    Room.find_or_create_by(room_number: room_number + 1, hall_id: hall.id)
#  end
#end
