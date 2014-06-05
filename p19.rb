# You are given the following information, but you may prefer to do some research for yourself.
#
# 1 Jan 1900 was a Monday.
# Thirty days has September,
# April, June and November.
# All the rest have thirty-one,
# Saving February alone,
# Which has twenty-eight, rain or shine.
# And on leap years, twenty-nine.
# A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
# How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

class Time

  def next_year
    unless self.method == Time.year
      default = Time.new(Time.now.year+1)
    else
      default = Time.new (year + 1)
    end
  end

  def next_month
    Time.new("#{self.month.next.to_s}")
  end

  def days(maxYear)
    days = 0
    1.upto(maxYear) do |yrByYear|
      if (yrByYear % 100 == 0 && yrByYear % 400 == 0)
        days += yrByYear + 366
      elsif yrByYear % 4 == 0
        days += yrByYear + 366
      else
        days += 365
      end
    end
    days
  end

end






#
# class Sundays
#
#   def findSundays
#     year = 2000
#     days = findDaysSince1901(year)
#     find_day =
#
#
#   def findDaysSince1901(year=2000)
#     days = 0
#     1901.upto(year) do |yr|
#       if yr.yearIsLeapYear?
#         days += 366
#       else
#         days += 365
#       end
#     end
#     return days
#   end
#
#   def find_day(day_count)
#     days = days_of_week[day_count % 7]
#   end
#
#   def days_of_week
#     [
#       "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday", "Monday"
#     ]
#   end
#
#   def months(year)
#     leap_year = year.to_i.leap_year?
#     months = { "January" => 31, "February" => february(year), "March" => 31, "April" => 30, "May" => 31, "June" => 30, "July" => 31, "August" => 31, "September" => 30, "October" => 31, "November" => 30, "December" => 31 }
#   end
#
#   def list_months
#     months = { "January" => 31, "February" => months(Time.now.year), "March" => 31, "April" => 30, "May" => 31, "June" => 30, "July" => 31, "August" => 31, "September" => 30, "October" => 31, "November" => 30, "December" => 31 }
#   end
#
#   def february(year)
#     if year.yearIsLeapYear?
#       29
#     else
#       28
#     end
#   end
#
#   def self.leap_year?
#     if self.is_a? Integer
#       self.yearIsLeapYear?
#     else
#       raise "Call yearIsLeapYear? on an Integer, returns boolean value."
#     end
#   end
# end
#
# class Integer
#   def yearIsLeapYear?
#     if self % 100 == 0 && self % 400 == 0
#       return true
#     elsif self % 4 == 0
#       return true
#     else
#       return false
#     end
#   end
# end
