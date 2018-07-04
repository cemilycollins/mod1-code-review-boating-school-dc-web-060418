class BoatingTest

  attr_reader :student, :test_name, :instructor
  attr_accessor :test_status

  @@all = []

  def initialize(student_ob, test_name, test_status, instructor_ob)
    @student = student_ob
    @test_name = test_name
    @test_status = test_status
    @instructor = instructor_ob
    @@all << self
  end

  def self.all
    @@all
  end

end
