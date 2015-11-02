class Person
  attr_accessor :name, :surname, :id_number, :date_of_birth, :salary

  def to_s
    exit = "Person:\n#{@name} #{@surname}\nID: #{@id_number}\nDate of birth: #{@date_of_birth}\n"
    exit += "Salary: #{@salary}\n" if @salary
    exit
  end

end