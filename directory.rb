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

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end 

def print(names)
  #prints out students in a list. 
  names.each do |name| puts name end 
end 

def print_footer(names)
  #prints the total number of students
  #it’s important that print() doesn’t add new line characters
  puts "Overall, we have #{names.count} great students"
end 

print_header
print(students)
print_footer(students)
