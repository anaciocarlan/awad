require_relative '../test_helper'
require_relative '../../app/models/quote'

class QuoteTest < ActiveSupport::TestCase

	def test_import	# Testing if there is an increase in the database elements after an import
		blen = Quote.all.size
		f = File.new('.\test\unit\test.csv')
		Quote.import(f)
		alen = Quote.all.size
		assert_not_equal(alen,blen,"The database hasn't changed.")
	end
  # test "the truth" do
  #   assert true
  # end
end