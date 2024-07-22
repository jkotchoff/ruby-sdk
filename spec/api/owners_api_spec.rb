=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://docs.intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.63.2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'spec_helper'
require 'json'

# Unit tests for Intrinio::OwnersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OwnersApi' do
  before do
    # run before each test
    @instance = Intrinio::OwnersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OwnersApi' do
    it 'should create an instance of OwnersApi' do
      expect(@instance).to be_instance_of(Intrinio::OwnersApi)
    end
  end

  # unit tests for get_all_owners
  # All Owners
  # Returns all owners and information for all insider and institutional owners of securities covered by Intrinio.
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :institutional Returns insider owners who have filed forms 3, 4, or 5 with the SEC only. Possible values are true, false, or omit for both.
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseOwners]
  describe 'get_all_owners test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_owner_by_id
  # Owner by ID
  # Returns the Owner with the given ID
  # @param identifier An Intrinio ID or CIK of an Owner
  # @param [Hash] opts the optional parameters
  # @return [Owner]
  describe 'get_owner_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for insider_transaction_filings_by_owner
  # Insider Transaction Filings by Owner
  # Returns a list of all insider transaction filings by an owner in as many companies as the owner may be considered an insider. Criteria for being an insider include being a director, officer, or 10%+ owner in the company. Transactions are detailed for both non-derivative and derivative transactions by the insider.
  # @param identifier The Central Index Key issued by the SEC, which is the unique identifier all owner filings are issued under.
  # @param [Hash] opts the optional parameters
  # @option opts [Date] :start_date Return Owner&#39;s insider transaction filings on or after this date
  # @option opts [Date] :end_date Return Owner&#39;s insider transaction filings on or before this date
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseOwnerInsiderTransactionFilings]
  describe 'insider_transaction_filings_by_owner test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for institutional_holdings_by_owner
  # Institutional Holdings by Owner
  # Returns a list of all ownership interests and the value of their interests by a single institutional owner.
  # @param identifier The Central Index Key issued by the SEC, which is the unique identifier all owner filings are issued under.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [Date] :as_of_date Return only holdings filed before this date.
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseOwnerInstitutionalHoldings]
  describe 'institutional_holdings_by_owner test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search_owners
  # Search Owners
  # Searches for Owners matching the text &#x60;query&#x60;
  # @param query 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :institutional Returns insider owners who have filed forms 3, 4, or 5 with the SEC only. Possible values are true, false, or omit for both.
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseOwners]
  describe 'search_owners test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
