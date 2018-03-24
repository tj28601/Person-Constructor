class Person
  def initialize(first_name, last_name = nil, middle_name = nil)

    if last_name.nil? && middle_name.nil? #no last name give, so name is full name
      full_name = first_name.split
      @first_name = full_name[0]
      @last_name = full_name[1]
    elsif middle_name.nil?
      @first_name = first_name
      @last_name = last_name
    else
      @first_name = first_name
      @last_name = last_name
      @middle_name = middle_name
    end



    def summary
  "#{@first_name} #{@middle_name} #{@last_name}"
    end
  end
end



person_1 = Person.new('Mike', 'Jones', 'David')
person_2 = Person.new('Jascha','Heifetz')
person_3 = Person.new('Nathan Milstein')

puts person_1.summary
puts person_2.summary
puts person_3.summary
# puts person_2.full_name
