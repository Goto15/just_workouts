require 'json'
require 'Set'

data_hash = JSON.parse(File.read('exercises.json'))

prepend_text = "static let exercisesData = [\n"
postpend_text = "]"

exercisesArray = data_hash['exercises'].map do |exercise|
    "Exercise( name: \"#{exercise['name']}\",
                force: \"#{exercise['force']}\",
                level: \"#{exercise['level']}\",
                mechanic: \"#{exercise['mechanic']}\",
                equipment: \"#{exercise['equipment']}\",
                primary_muscles: \"#{exercise['primaryMuscles'].join(',')}\",
                secondary_muscles: \"#{exercise['secondaryMuscles'].join(',')}\",
                instructions: \"#{exercise['instructions'].join('.')}\",
                category: \"#{exercise['category']}\",
    ),\n"
end

full_text = prepend_text + exercisesArray.join + postpend_text

File.open("exercises.swift", 'w') { |file| file.write(full_text)}
puts 'Done'
