def isbn_10_dash_n_space_n_check(num)
    num.gsub!(/[- ]/, '')
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
    if num.length < 10
        wrong += 1
    end
    unless wrong == 0
        return false
    end
    num
end

def turn_num_into_array(num)
    num =  isbn_10_dash_n_space_n_check(num)
    if num == false
        return false
    end
    stopgap = num.split('')
    stopgap
end

def isbn_10_split_n_each_do_n_sumcheck(num)
    stopgap = turn_num_into_array(num)
    check_dig = stopgap.pop
    if check_dig.downcase == "x"
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

end


def isbn_13_dashes_n_spaces(num)
    num.gsub!(/[- ]/, '')
    wrong = 0 
    if num.gsub(/[\D]/, '') != num
        wrong += 1
    end
    if num.length < 13
        wrong += 1
    end
    unless wrong == 0
        return false
    end
end


    

