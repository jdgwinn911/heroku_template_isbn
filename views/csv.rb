
  CSV.foreach("isbnn.csv") do |row|
    row.shift
    isbn_name << row
  end
  
  CSV.open("something.csv", "wb") do |csv|
    isbn_name.each_with_index do |v,i|
      v = v.join('')
      if funky_fresh(v)
        valid << "valid"
      else 
        valid << "invalid"
      csv << [valid[i], v]
      end
    end
  end