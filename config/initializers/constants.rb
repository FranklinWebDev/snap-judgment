require 'ostruct'

SUMMER = OpenStruct.new({
  start_date: Date.new(Date.today.year, 5, 10),
  end_date: Date.new(Date.today.year, 7, 1)
})

AUTUM = OpenStruct.new({
  start_date: Date.new(Date.today.year, 9, 14),
  end_date: Date.new(Date.today.year, 12, 31)
})

SPRING = OpenStruct.new({
  start_date: Date.new(Date.today.year, 1, 14),
  end_date: Date.new(Date.today.year, 5, 5)
})

