def isbn_10(num)
    num.gsub!(/[- ]/, '')
        
    end
    wrong = 0 
    
    if num.gsub(/[\D]/, '') != num
        wrong += 1
    end
    if num.end_with?('x') || num.end_with?('X')
     wrong -= 1
     check = num.gsub(/[\D]/, '')
     x = num[-1]
    if "#{check}#{x}" != num
       wrong += 1
        end
     end

    unless wrong == 0
        return false
    end

    stopgap = num.split('')

    check_dig = stopgap.pop
    if check_dig == "x" || check_dig == "X"
        check_dig = 10
    end

    sum = 0

    stopgap.each_with_index do |var, indx|
        spot = var.to_i * (indx + 1)
        sum += spot
    end
    
    sumcheck = sum % 11

    if sumcheck == check_dig.to_i
        return true
    else
        return false
    end



    true
end