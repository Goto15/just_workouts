require 'json'
require 'Set'
require 'set'

def remove_equip_from_name(name:, equip:)
    return name.downcase if name == nil || equip == nil

    name.downcase!
    equip.downcase!

    if name.start_with?(equip) || name.start_with?()
        name.slice!(equip)
        return name.strip
    end

    return name
end

def is_alternate?(name:)
    alternate_possibilities = ["alternate", "alternating", "band", "bodyweight", "clean", "decline", "incline", "narrow", "seated", "standing", "weighted", "wide", "zottman"]
    equipment = ["body", "machine", "kettlebell", "kettlebells", "dumbbell", "cable", "barbell", "bands", "medicine ball", "exercise ball", "ez-bar", "ez curl bar", "foam roll"]

    check_array = alternate_possibilities + equipment
    return check_array.any? { |word| name.downcase.include?(word)}
end

def is_creep(category:, equipment:)
    creep_categories = ["cardio", "crossfit" "plyometrics", "stretching"]
    creep_equipment = ["bands", "body only", "exercise ball", "foam roll", "medicine ball", "other"]

    is_creep_category = creep_categories.include?(category)
    is_creep_equipment = creep_equipment.include?(equipment)

    return is_creep_category || is_creep_equipment
end

data_hash = JSON.parse(File.read('exercises.json'))

prepend_text = "let exerciseData = [\n"
postpend_text = "]"
exerciseSet = Set[]
exercisesArray = data_hash['exercises'].map do |exercise|
    if !is_alternate?(name: exercise['name']) && !is_creep(category: exercise['category'], equipment: exercise['equipment'])
        clean_name = remove_equip_from_name(name: exercise['name'], equip: exercise['equipment'])
        exerciseSet.add(clean_name)

        "[\"name\": \"#{exercise['name']}\",
        \"primaryMuscles\": \"#{exercise['primaryMuscles'].join(',')}\",
        \"secondaryMuscles\": \"#{exercise['secondaryMuscles'].join(',')}\",
        \"force\": \"#{exercise['force']}\",
        \"level\": \"#{exercise['level']}\",
        \"movement\": \"#{exercise['mechanic']}\",
        \"equipment\": \"#{exercise['equipment']}\",
        \"category\": \"#{exercise['category']}\",
        \"instructions\": \"#{exercise['instructions'].join('\n')}\"
    ],\n"
    end
end

full_text = prepend_text + exercisesArray.join + postpend_text

File.open("ExercisesList_cleaned.swift", 'w') { |file| file.write(full_text)}
puts exerciseSet
puts exerciseSet.count
puts 'Done'
