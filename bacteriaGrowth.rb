puts "Please enter the limit of bacteria in the patient's body (ex. 7300000):"
bacteriaLimit = gets.chomp.to_i #7300000
puts "Please enter the time before the cure begins to work (in minutes. ex. 150):"
timeBeforeCureWorks = gets.chomp.to_i #150
puts "Please enter the amount of bacteria the person starts out with (ex. 2):"
startingBacteria = gets.chomp.to_i #2
puts "Please enter the time it takes for the bacteria to double (in minutes. ex. 23):"
timeForBacteriaToDouble = gets.chomp.to_i #23

totalTime = 0

# calculates how long it will take before the patient will die
patientDead = false
totalBacteria = startingBacteria

while !patientDead
  totalBacteria *= 2
  totalTime += timeForBacteriaToDouble
  if totalBacteria >= bacteriaLimit
    patientDead = true
    puts "\nAssuming the patient starts with " + startingBacteria.to_s + " bacteria and the bacteria doubles every " + timeForBacteriaToDouble.to_s + " minutes:"
    puts "Patient is dead after " + totalTime.to_s + " minutes with " + totalBacteria.to_s + " bacteria.\n\n"
  end
end

# calculates when the cure needs to be administered to save the patient
cureNeededBeforeTime = (totalTime - timeForBacteriaToDouble) - timeBeforeCureWorks
puts "Cure needs to be administered within " + cureNeededBeforeTime.to_s + " minutes of the patient being infected."