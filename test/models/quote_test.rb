require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  
  test "unique_tag" do 
  	quote = FactoryGirl.create(:quote)
  	quote = Quote.create(:author => 'Kurt Thomas', :saying => 'You only yolo once')
  	expected = 'KT#' + quote.id.to_s
  	actual = quote.unique_tag
  	assert_equal expected, actual
  end

end
