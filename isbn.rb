def isbn_10(num)
    num.gsub!(/[- ]/, '')
    num
end
   