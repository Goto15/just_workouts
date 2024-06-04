require 'json'
require 'Set'

data_hash = JSON.parse(File.read('exercises.json'))

prepend_text = "let exerciseData = ["
postpend_text = "]"
exercisesArray = data_hash['exercises'].map do |exercise|
    "[\"name\": \"#{exercise['name']}\",
                \"primaryMuscles\": \"#{exercise['primaryMuscles'].join(',')}\",
                \"secondaryMuscles\": \"#{exercise['secondaryMuscles'].join(',')}\",
                \"force\": \"#{exercise['force']}\",
                \"level\": \"#{exercise['level']}\",
                \"movement\": \"#{exercise['mechanic']}\",
                \"equipment\": \"#{exercise['equipment']}\",
                \"category\": \"#{exercise['category']}\",
                \"instructions\": \"#{exercise['instructions'].join(' ')}\"
    ],\n"
end

full_text = prepend_text + exercisesArray.join + postpend_text

File.open("ExercisesList.swift", 'w') { |file| file.write(full_text)}
puts 'Done'
