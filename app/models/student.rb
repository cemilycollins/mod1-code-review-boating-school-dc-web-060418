class Student

attr_reader :first_name, :last_name

  @@all = []

  def initialize(first, last)
    @first_name = first
    @last_name = last
    @@all << self
  end

  def self.all
    @@all
  end

  def self.full_names
    @@all.map do |student|
      "#{student.first_name} #{student.last_name}"
    end
  end

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def self.find_student(full_name)
    name_array = full_name.split(" ")
    var = @@all.select do |student|
      student.first_name == name_array[0] && student.last_name == name_array[1]
    end
    var[0]
  end

end
