student_count = 11
#all students into array 
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]

#prints out students in a list. 

puts "The students of Villains Academy"
puts "-------------"
students.each do |student| puts student end 

puts "Overall, we have #{student_count} great students"
# finally, we print the total number of students
#it’s important that print() doesn’t add new line characters
