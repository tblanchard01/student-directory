#all students into hashes 
=begin
def input_students
  puts "Please enter the name of a student"
  name = gets.chomp
  puts "Please enter their cohort"
  cohort = gets.chomp
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  #get first name
   while !(name.empty? and cohort.empty?) do 
    students << {name: name, cohort: cohort}
    students.count == 1? (puts "Now we have 1 student") : (puts "Now we have #{students.count} students")
    #get another name 
    puts "Please enter another name"
    name = gets.chomp
    puts "Please enter their cohort"
    cohort = gets.chomp
   end 
  #return students
  students
end 
=end 

students = [
             {name: "Tim", cohort: :July}, 
             {name: "Angela", cohort: :July},
             {name: "Dan", cohort: :July},
             {name: "Jen", cohort: :June}, 
             {name: "Solo", cohort: :June},
             {name: "Angus", cohort: :June},
             {name: "Anna", cohort: :April}, 
             {name: "Steve", cohort: :April},
             {name: "Kerry", cohort: :April},
          ]

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end 

def print(names)
  #prints out students in a list. 
  names.each_with_index do |name, index| puts "#{index+1}. #{name[:name]} 
  (#{name[:cohort]} cohort)" end 
end 

def print_footer(names)
  #prints the total number of students
  #it’s important that print() doesn’t add new line characters
  names.count == 1? (puts "We currently have 1 great student") : (puts "We currently have #{names.count} students")
end 

students_by_cohort_hash = {}

students.each { |line|
  #sets up hash key/values as variables
  student_name = line[:name]
  student_cohort = line[:cohort]
 
 if students_by_cohort_hash[student_cohort] == nil 
 students_by_cohort_hash[student_cohort] = [student_name]
 else students_by_cohort_hash[student_cohort].push(student_name)
 end 
}

print_header
print(students)
print_footer(students)
puts "Here are all our current students, listed by cohort:"
students_by_cohort_hash.each{ |key, value| puts "#{key}: #{value.join(", ")}"}
