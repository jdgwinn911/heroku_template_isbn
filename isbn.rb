def isbn_10(num)
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

    unless wrong == 0
        return false
    end

    stopgap = num.split('')

    check_dig = stopgap.pop
    



    num
end
   