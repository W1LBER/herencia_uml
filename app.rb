class Appointment
  def initialize(location, purpose, hour, min)
    @location = location
    @purpose = purpose
    @hour = hour
    @min = min
  end

  def location()
  end

  def purpose()
  end

  def hour()
  end

  def min()
  end
end

class MonthlyAppointment < Appointment
  def initialize(location, purpose, hour, min, day)
    super(location, purpose, hour, min)
    @day = day
  end

  def day()
  end

  def occurs_on?(day)
  end
   
  def to_s
    "Reunion mensual en #{@location} en #{@purpose} el dia #{@day} a las #{@hour}:#{@min}"
  end

end

class DailyAppointment < Appointment
  def initialize(location, purpose, hour, min)
    super
  end

  def occurs_on?(hour, min)
  end
  
  def to_s
    "Reunión diaria en #{@location} sobre #{@purpose} a la(s) #{@hour}:#{@min}." 
  end
end

class OneTimeAppointment < Appointment
 def initialize(location, purpose, hour, min, day, month, year)
    super(location, purpose, hour, min)
    @day = day
    @month = month
    @year = year
 end

 def day()
 end

 def month()
 end

 def year()
 end

 def occurs_on?(day, month, year)
 end

 def to_s
  "Reunion unica en #{@location} sobre #{@purpose} el #{@day}/#{@month}/#{@year}"
 end 
end


puts OneTimeAppointment.new('Desafío Latam', 'Trabajo', 14, 30, 4, 6, 2019)

puts DailyAppointment.new('Desafío Latam', 'Educación', 8, 15)

puts MonthlyAppointment.new('NASA', 'Aliens', 8, 15, 23)
