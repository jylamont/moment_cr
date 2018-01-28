require "./spec_helper"

def same_time?(a : Time, b : Time)
  a.year == b.year &&
  a.month == b.month &&
  a.day == b.day &&
  a.hour == b.hour &&
  a.minute == b.minute &&
  a.second == b.second
end

describe MomentCr do
  describe "parse" do 
    it "should be able to parse natural times" do 
      compare_time = ->(a : Time, b : Time) { same_time?(a, b).should be_truthy }

      actual = MomentCr.parse("today")
      expected = Time.now
      compare_time.call(actual, expected)

      actual = MomentCr.parse("tomorrow")
      expected = Time.now + Time::Span.new(1,0,0,0)
      compare_time.call(actual, expected)

      actual = MomentCr.parse("tomorrow 9am")
      expected = (Time.now + Time::Span.new(1,0,0,0)).at_beginning_of_day + Time::Span.new(0,9,0,0)
      compare_time.call(actual, expected)
    end
  end
end
