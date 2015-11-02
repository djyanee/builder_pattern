require_relative 'person_builder_module'

class PersonBuildDirector

  def initialize(builder)
    @builder = builder
  end

  def construct(options = {})
    @builder.name = options[:name]
    @builder.surname = options[:surname]
    @builder.date_of_birth = options[:date_of_birth]
    @builder.set_id_number = options[:id_number]
    @builder.salary = options[:salary] if options[:is_employee]
    @builder.get_result
  end

end