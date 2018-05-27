evening_activities = [
  'listen to podcasts',
  'cook food',
  'do sudoku',
  'smoke weed',
  'eat food',
  'watch tv',
  'clean',
  'organize',
  'pet a cat',
  'text a friend',
  'masturbate',
  'browse twitter/fb/instagram',
  'online shop',
  'listen to music',
  'cry',
  'fall asleep',
]

tonights_activities = evening_activities.sample(rand(evening_activities.count + 1))

activity_string = ''
case tonights_activities.count
when 0
  activity_string << "go out! Do nothing! What do I care, I give up"
when 1
  activity_string << "just #{tonights_activities[0]} all night long"
when 2
  activity_string << "#{tonights_activities[0]} and #{tonights_activities[1]}"
else
  tonights_activities.each_with_index do |activity, index|
    case index
    when tonights_activities.count - 1
      activity_string << activity
    when tonights_activities.count - 2
      activity_string << "#{activity}, and "
    else
      activity_string << "#{activity}, "
    end
  end
end
puts "Tonight, you should #{activity_string}."
