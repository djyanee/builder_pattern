require_relative 'person'

class PersonBuilder

  def initialize
    @person = Person.new
  end

  def name=(name)
    @person.name = name
  end

  def surname=(surname)
    @person.surname = surname
  end

  def set_id_number(id_number)
    date_tab = @person.date_of_birth.split('-')
    exit = date_tab[0][2..3] + date_tab[1] + date_tab[2] + id_number.to_s
    @person.id_number = exit.to_i
  end

  def date_of_birth=(date_of_birth)
    @person.date_of_birth = date_of_birth
  end

  def salary=(salary)
    @person.salary = salary
  end

  def get_result
    @person
  end

end