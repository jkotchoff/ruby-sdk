=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://docs.intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.34.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'spec_helper'
require 'json'

# Unit tests for Intrinio::InsiderTransactionFilingsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'InsiderTransactionFilingsApi' do
  before do
    # run before each test
    @instance = Intrinio::InsiderTransactionFilingsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InsiderTransactionFilingsApi' do
    it 'should create an instance of InsiderTransactionFilingsApi' do
      expect(@instance).to be_instance_of(Intrinio::InsiderTransactionFilingsApi)
    end
  end

  # unit tests for get_all_insider_transaction_filings
  # All Insider Transactions Filings
  # Returns all insider transactions filings fitting the optional supplied start and end date.
  # @param [Hash] opts the optional parameters
  # @option opts [Date] :start_date Filed on or after the given date
  # @option opts [Date] :end_date Filed before or after the given date
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :sort_by The field to sort by.  Default is &#39;filing_date&#39;.  Valid values are - &#39;filing_date&#39;, &#39;updated_on&#39;.
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseOwnerInsiderTransactionFilings]
  describe 'get_all_insider_transaction_filings test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
