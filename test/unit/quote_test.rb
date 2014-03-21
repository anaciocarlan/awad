require_relative '../test_helper'
require_relative '../../app/models/quote'

class QuoteTest < ActiveSupport::TestCase

	def test_import_size	# Testing if there is an increase in the database elements after an import
		blen = Quote.all.size
		f = File.new('.\test\unit\test.csv')
		Quote.import(f)
		alen = Quote.all.size
		assert_not_equal(alen,blen,"The database hasn't changed after the import")
	end
	
	def test_import_author	# Testing if the import is valid: does it have an author?
		f = File.new('.\test\unit\test.csv')
		Quote.import(f)
		a = Quote.first.author
		b = ""
		assert_not_equal(a,b,"The imported quote doesn't have an author")
	end
	
	def test_import_quote	# Testing if the import is valid: does it have a quote?
		f = File.new('.\test\unit\test.csv')
		Quote.import(f)
		a = Quote.first.quote
		b = ""
		assert_not_equal(a,b,"The imported quote doesn't have a quote")
	end
	
	def test_db	# Testing if the database isn't empty.
		dblen = Quote.all.size
		assert_not_equal(dblen,0,"The database doesn't read any quotes in it")
	end
	
  # test "the truth" do
  #   assert true
  # end
end