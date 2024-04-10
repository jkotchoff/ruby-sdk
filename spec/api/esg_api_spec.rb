=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://docs.intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.56.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'spec_helper'
require 'json'

# Unit tests for Intrinio::ESGApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ESGApi' do
  before do
    # run before each test
    @instance = Intrinio::ESGApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ESGApi' do
    it 'should create an instance of ESGApi' do
      expect(@instance).to be_instance_of(Intrinio::ESGApi)
    end
  end

  # unit tests for get_esg_companies
  # ESG Companies
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :country 
  # @option opts [String] :industry 
  # @option opts [String] :ticker 
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseESGCompanies]
  describe 'get_esg_companies test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_esg_company_comprehensive_ratings
  # ESG Company Comprehensive Ratings History
  # 
  # @param identifier ISIN, Intrinio ID, or Ticker
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseESGCompanyComprehensiveRatingHistory]
  describe 'get_esg_company_comprehensive_ratings test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_esg_company_ratings
  # ESG Company Ratings History
  # 
  # @param identifier ISIN, Intrinio ID, or Ticker
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseESGCompanyRatingHistory]
  describe 'get_esg_company_ratings test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_esg_latest
  # ESG Latest
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :country 
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseESGLatest]
  describe 'get_esg_latest test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_esg_latest_comprehensive
  # ESG Latest Comprehensive
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :country 
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseESGLatestComprehensive]
  describe 'get_esg_latest_comprehensive test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
