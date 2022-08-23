=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://docs.intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.29.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'spec_helper'
require 'json'

# Unit tests for Intrinio::MunicipalityApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MunicipalityApi' do
  before do
    # run before each test
    @instance = Intrinio::MunicipalityApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MunicipalityApi' do
    it 'should create an instance of MunicipalityApi' do
      expect(@instance).to be_instance_of(Intrinio::MunicipalityApi)
    end
  end

  # unit tests for get_all_municipalities
  # All Municipalities
  # Returns all Municipalities. When parameters are specified, returns matching municipalities.
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :has_financials Return municipalities with financials
  # @option opts [String] :government_name Return municipalities with a government name matching the given query
  # @option opts [String] :government_type Return municipalities with the given government type
  # @option opts [String] :area_name Return municipalities with an area name matching the given query
  # @option opts [String] :area_type Return municipalities with the given area type
  # @option opts [String] :city Return municipalities in the given city
  # @option opts [String] :state Return municipalities in the given state
  # @option opts [Float] :zipcode Return municipalities in the given zipcode
  # @option opts [Float] :population_greater_than Return municipalities with a population greater than the given number
  # @option opts [Float] :population_less_than Return municipalities with a population less than the given number
  # @option opts [Float] :enrollment_greater_than Return municipalities with an enrollment greater than the given number
  # @option opts [Float] :enrollment_less_than Return municipalities with an enrollment less than the given number
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseMunicipalities]
  describe 'get_all_municipalities test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_municipality_by_id
  # Municipality by ID
  # Returns the Municipality with the given ID
  # @param id An Intrinio ID of a Municipality
  # @param [Hash] opts the optional parameters
  # @return [Municipality]
  describe 'get_municipality_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_municipality_financials
  # Financials for a Municipality
  # Returns financial statement data for the Municipality with the given ID
  # @param id An Intrinio ID of a Municipality
  # @param [Hash] opts the optional parameters
  # @option opts [Float] :fiscal_year Return financials for the given fiscal year
  # @return [ApiResponseMunicipalitiyFinancials]
  describe 'get_municipality_financials test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
