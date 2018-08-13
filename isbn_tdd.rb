require "minitest/autorun"
require_relative "isbn.rb"

class Isbn < Minitest::Test

     def test_that_empty_string_returns_string
        assert_equal("877195869x", isbn_10_dash_n_space_n_check("877195869x"))
     end

     def test_that_there_are_no_spaces_and_dashes
        assert_equal("877195869x", isbn_10_dash_n_space_n_check("877195869x"))
     end

     def test_that_isbn_10_can_have_lettter_x_at_end
        assert_equal("877195869x", isbn_10_dash_n_space_n_check("877195869x"))
     end

     def test_that_isbn_10_is_correct
        assert_equal(false, isbn_10_dash_n_space_n_check("1297691"))
     end

     def test_that_isbn_10_split_n_each_do_n_sumcheck_is_doing_its_job
        num = "877195869X"
        assert_equal(true, isbn_10_split_n_each_do_n_sumcheck(num))
     end

    def test_turn_num_into_array_returns_array()
        num = "876546549847"
        assert_equal(Array, turn_num_into_array(num).class)
    end

    def test_that_isbn_10_is_invalid
        assert_equal(false, turn_num_into_array("1297691"))
    end

    def test_that_isbn_10_is_valid_isbn_number
        assert_equal(true, isbn_10_split_n_each_do_n_sumcheck("877195869x"))
    end

    def test_that_isbn_13_has_no_spaces_and_dashes
        assert_equal("9780470059029", isbn_13_dashes_n_spaces("9780470059029"))
    end

    def test_that_isbn13_arr()
        num = "9780470059029"
        assert_equal(Array, isbn13_arr(num).class)
    end

    def test_that_isbn13_is_valid
        assert_equal(true, isbn13_each_do_n_sumcheck("9780470059029"))
    end

    def test_for_an_invalid_isbn_for_isbn13
        assert_equal(false, isbn13_each_do_n_sumcheck("1214414145"))
    end



    







end