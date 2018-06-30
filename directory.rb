#all students into hashes 

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  #get first name
  name = gets.chomp
  while !name.empty? do 
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    #get another name 
    name = gets.chomp
  end 
  #return students
  students
end 

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end 

def print(names)
  #prints out students in a list. 
  names.each do |name| puts "#{name[:name]} (#{name[:cohort]} cohort)" end 
end 

def print_footer(names)
  #prints the total number of students
  #it’s important that print() doesn’t add new line characters
  puts "Overall, we have #{names.count} great students"
end 
students = input_students
print_header
print(students)
print_footer(students)
