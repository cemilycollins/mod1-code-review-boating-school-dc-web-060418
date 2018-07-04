require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

spongebob= Student.new("Spongebob", "Squarepants")
patrick= Student.new("Patrick", "Star")

a = Student.full_names

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")
binding.pry
test1= spongebob.add_boating_test("Don't Crash 101", "pending", puff)

Pry.start
