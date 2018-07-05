@students = []
def input_students
  puts "Please enter the name of a student"
  name = gets.chomp
  puts "Please enter their cohort"
  cohort = gets.chomp
  puts "To finish, just hit return twice"
  # create an empty array
  #get first name
   while !(name.empty? and cohort.empty?) do 
    @students << {name: name, cohort: cohort}
    @students.count == 1? (puts "Now we have 1 student") : (puts "Now we have #{@students.count} students")
    #get another name 
    puts "Please enter another name"
    name = gets.chomp
    puts "Please enter their cohort"
    cohort = gets.chomp
   end 
  #return students
  @students
end 


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
=begin
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
=end

def print_menu
#print the menu and ask the user what to do
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit" # 9 because we'll be adding more items
end 

def show_students
  print_header
  print(@students)
  print_footer(@students)
end 

def interactive_menu
  loop do
    print_menu
    #read the input and save it into a variable
    selection = gets.chomp
    # 3. do what the user has asked
    case selection
    when "1"
      input_students
    when "2"
      show_students
    when "9"
      exit # this will cause the program to terminate
    else
      puts "I don't know what you meant, try again"
    end
  end
end

interactive_menu



#puts "Here are all our current students, listed by cohort:"
#students_by_cohort_hash.each{ |key, value| puts "#{key}: #{value.join(", ")}"}
