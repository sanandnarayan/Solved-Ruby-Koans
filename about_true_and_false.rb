require File.expand_path(File.dirname(__FILE__) + '/edgecase')

class AboutTrueAndFalse < EdgeCase::Koan
  def truth_value(condition)
    if condition
      :true_value
    else
      :false_value
    end
  end

  def test_true_is_treated_as_true
    assert_equal :true_value, truth_value(true)    
  end

  def test_false_is_treated_as_false
    assert_equal :false_value, truth_value(false)
  end

  def test_nil_is_treated_as_false_too
    assert_equal :false_value, truth_value(nil)
  end

  def test_everything_else_is_treated_as_true
    assert_equal :true_value, truth_value(1)
    assert_equal :true_value, truth_value(0)
    assert_equal :true_value, truth_value([])
    assert_equal :true_value, truth_value({})
    assert_equal :true_value, truth_value("Strings")
    assert_equal :true_value, truth_value("")
  end

end
