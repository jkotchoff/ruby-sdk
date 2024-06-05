=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://docs.intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.61.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'spec_helper'
require 'json'

# Unit tests for Intrinio::FundamentalsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FundamentalsApi' do
  before do
    # run before each test
    @instance = Intrinio::FundamentalsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FundamentalsApi' do
    it 'should create an instance of FundamentalsApi' do
      expect(@instance).to be_instance_of(Intrinio::FundamentalsApi)
    end
  end

  # unit tests for filter_fundamental
  # Filter Fundamental
  # Returns fundamentals that meet the set of filters specified in parameters.
  # @param [Hash] opts the optional parameters
  # @option opts [Date] :filed_after Only include fundamentals that were filed on or after this date.
  # @option opts [Date] :filed_before Only include fundamentals that were filed on or before this date.
  # @option opts [BOOLEAN] :reported_only Only as-reported fundamentals
  # @option opts [Integer] :fiscal_year Only for the given fiscal year
  # @option opts [String] :statement_code Only of the given statement code
  # @option opts [String] :type Only of the given type
  # @option opts [String] :fiscal_period The fiscal period
  # @option opts [Date] :start_date Only include fundamentals where covered period is on or after this date.
  # @option opts [Date] :end_date Only include fundamentals where covered period is on or before this date.
  # @option opts [Date] :updated_after Only include fundamentals where it was updated after this date.
  # @option opts [Date] :updated_before Only include fundamentals where it was updated before this date.
  # @option opts [String] :template The financial statement template used by Intrinio to standardize the as reported data
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [Fundamental]
  describe 'filter_fundamental test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_fundamental_by_id
  # Fundamental by ID
  # Returns a specific fundamental associated with a particular unique fundamental ID. Useful for pulling reference data for a specific fundamental.
  # @param id The Intrinio ID for the Fundamental
  # @param [Hash] opts the optional parameters
  # @return [Fundamental]
  describe 'get_fundamental_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_fundamental_reported_financials
  # Reported Financials
  # Returns as-reported financial statement data for income statement, balance sheet, and cash flow statement. Data for income statement and cash flow statement is available on a FY, QTR (Q1, Q2, Q3, Q4), TTM (Q1TTM, Q2TTM, Q3TTM), and YTD (Q2YTD, Q3YTD) basis. Data for the balance sheet is available on a FY or QTR (Q1, Q2, Q3, Q4) basis only due its point-in-time nature.
  # @param id The Intrinio ID or lookup code (ticker-statement-year-period) for the Fundamental
  # @param [Hash] opts the optional parameters
  # @return [ApiResponseReportedFinancials]
  describe 'get_fundamental_reported_financials test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_fundamental_standardized_financials
  # Standardized Financials
  # Returns standardized financial statement data for income statement, balance sheet, cash flow statement and over 100 associated calculations for a given company. Data for income statement, cash flow statement, and calculations is available on a FY, QTR (Q1, Q2, Q3, Q4), TTM (Q1TTM, Q2TTM, Q3TTM), and YTD (Q2YTD, Q3YTD) basis. Data for the balance sheet is available on a FY or QTR (Q1, Q2, Q3, Q4) basis only due its point-in-time nature.
  # @param id The Intrinio ID or lookup code (ticker-statement-year-period) for the Fundamental
  # @param [Hash] opts the optional parameters
  # @return [ApiResponseStandardizedFinancials]
  describe 'get_fundamental_standardized_financials test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_fundamental_standardized_financials_dimensions
  # Standardized Financials Dimensions
  # Returns as reported dimensionality of a data tag
  # @param id The Intrinio ID or lookup code (ticker-statement-year-period) for the Fundamental
  # @param tag An Intrinio data tag ID or code (&lt;a href&#x3D;&#39;https://data.intrinio.com/data-tags&#39;&gt;reference&lt;/a&gt;)
  # @param [Hash] opts the optional parameters
  # @return [ApiResponseStandardizedFinancialsDimensions]
  describe 'get_fundamental_standardized_financials_dimensions test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for lookup_fundamental
  # Lookup Fundamental
  # Returns a specific fundamental with unique fundamental ID associated with a particular company, year, period and statement. Useful for pulling the unique fundamental ID and reference data for a specific fundamental.
  # @param identifier A Company identifier (Ticker, CIK, LEI, Intrinio ID)
  # @param statement_code The statement code
  # @param fiscal_year The fiscal year
  # @param fiscal_period The fiscal period
  # @param [Hash] opts the optional parameters
  # @return [Fundamental]
  describe 'lookup_fundamental test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
