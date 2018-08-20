require 'csv'
require_relative 'isbn.rb'

valid =[]
  isbn_name = []
  
  CSV.foreach("isbnn.csv") do |row|
    p "#{row[1]}"
    isbn_name << row[1]
  end
   
  CSV.open("something.csv", "wb") do |csv|
    isbn_name.each_with_index do |v,i|
      if funky_fresh(v)
        valid << "valid"
      else 
        valid << "invalid"
      end
      csv << [valid[i], v]
    end
  end
