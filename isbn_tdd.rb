require "minitest/autorun"
require_relative "isbn.rb"

class Isbn < Minitest::Test

     def test_that_empty_string_returns_string
        assert_equal("", isbn_10(""))
     end

     def test_that_string_that_has_dashes_or_spaces_gets_returned_as_empty_string
        assert_equal("123456", isbn_10("1--2  -- 34-5 -6 "))
     end

     def test_that_string_can_have_one_letter_in_it
        assert_equal("122939x", isbn_10("122939x"))
     end

     def test_that_the_isbn10_num_is_correct
        assert_equal(false, isbn_10("abcdefghij"))
    end












end