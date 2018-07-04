class Instructor

attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def fail_student(student_name, test_name)
    #should return the status failed
    this_student = Student.find_student(student_name)
    var = BoatingTest.all.select do |test_instance|
      test_instance.student == this_student && test_instance.test_name == test_name && test_instance.instructor == self
    end
    var[0].test_status = "failed"
    var[0].test_status
  end

end
