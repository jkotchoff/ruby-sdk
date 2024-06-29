=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://docs.intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.62.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'spec_helper'
require 'json'

# Unit tests for Intrinio::DataPointApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DataPointApi' do
  before do
    # run before each test
    @instance = Intrinio::DataPointApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DataPointApi' do
    it 'should create an instance of DataPointApi' do
      expect(@instance).to be_instance_of(Intrinio::DataPointApi)
    end
  end

  # unit tests for get_data_point_number
  # Data Point (Number)
  # Returns a numeric value for the given &#x60;tag&#x60; and the entity with the given &#x60;identifier&#x60;
  # @param identifier An identifier for an entity such as a Company, Security, Index, etc (Ticker, FIGI, ISIN, CUSIP, CIK, LEI, Intrinio ID)
  # @param tag An Intrinio data tag ID or code (&lt;a href&#x3D;&#39;https://data.intrinio.com/data-tags&#39;&gt;reference&lt;/a&gt;)
  # @param [Hash] opts the optional parameters
  # @return [Float]
  describe 'get_data_point_number test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_data_point_text
  # Data Point (Text)
  # Returns a text value for the given &#x60;tag&#x60; for the Security with the given &#x60;identifier&#x60;
  # @param identifier An identifier for an entity such as a Company, Security, Index, etc (Ticker, FIGI, ISIN, CUSIP, CIK, LEI, Intrinio ID)
  # @param tag An Intrinio data tag ID or code (&lt;a href&#x3D;&#39;https://data.intrinio.com/data-tags&#39;&gt;reference&lt;/a&gt;)
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'get_data_point_text test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
