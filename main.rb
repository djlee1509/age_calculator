require 'date'

class User
  attr_reader :name, :date_of_birth

  def initialize(name, date_of_birth)
    @name = name
    @date_of_birth = date_of_birth
  end

  # Returns an Integer representing the user's current age
  def age
    today_date = Date.today
    dob = @date_of_birth
    ages = today_date.year - dob.year

    if (dob.month > today_date.month or
      (dob.month == today_date.month and dob.day > today_date.day))
      ages -= 1
    end

    return ages
  end


  # Returns a date object for the user's next birthday
  def next_birthday
    dob = @date_of_birth
    today_date = Date.today
    year_diff = today_date.year - dob.year

    year = today_date.year

    if year_diff == age
      year += 1
    end

    return Date.new(year, dob.month, dob.day)
  end
end


tests = [
  Date.new(1986, 1, 1),
  Date.new(1988, Date.today.month, Date.today.day),
  Date.new(1990, 12, 30)
]

puts "===== ages ====="
tests.each do |date|
  puts "#{date} => #{User.new("Test", date).age}"
end


puts "===== birthdays ====="
tests.each do |date|
  puts "#{date} => #{User.new("Test", date).next_birthday}"
end
