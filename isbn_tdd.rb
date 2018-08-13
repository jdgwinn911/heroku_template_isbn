require "minitest/autorun"
require_relative "isbn.rb"

class Isbn < Minitest::Test

     def test_that_empty_string_returns_string
        assert_equal(true, isbn_10("877195869x"))
     end

     def test_that_string_that_has_dashes_or_spaces_gets_returned_as_empty_string
        assert_equal(true, isbn_10("87--71---95--86--9-x"))
     end

     def test_that_string_can_have_one_letter_in_it
        assert_equal(true, isbn_10("8   771 958  6 9x"))
     end

     def test_that_the_isbn10_num_is_correct
        assert_equal(false, isbn_10("abcdefghij"))
    end

    def test_that_the_isbn10_is_10_digits_long
        assert_equal(true, isbn_10("8  77-19-- -58  69x"))
    end

    def test_that_its_only_numbers
        assert_equal(false, isbn_10("123457654"))
    end

    def test_for_an_invalid_isbn
        assert_equal(false, isbn_10("877195x869"))
    end

    def test_if_isbn_is_correct
        assert_equal(true, isbn_10("0471958697"))
    end

    def test_that_empty_string_wont_mess_up
        assert_equal(false, isbn_10(' '))
    end











end