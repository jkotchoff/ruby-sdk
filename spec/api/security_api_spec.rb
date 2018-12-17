=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for Intrinio::SecurityApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SecurityApi' do
  before do
    # run before each test
    @instance = Intrinio::SecurityApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SecurityApi' do
    it 'should create an instance of SecurityApi' do
      expect(@instance).to be_instance_of(Intrinio::SecurityApi)
    end
  end

  # unit tests for get_all_securities
  # Get All Securiites
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseSecurities]
  describe 'get_all_securities test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_security_by_id
  # Get a Security by ID
  # 
  # @param identifier A Security identifier (Ticker, FIGI, ISIN, CUSIP, Intrinio ID)
  # @param [Hash] opts the optional parameters
  # @return [Security]
  describe 'get_security_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_security_data_point_number
  # Get Security Data Point (Number)
  # Returns a numeric value for the given &#x60;tag&#x60; for the Security with the given &#x60;identifier&#x60;
  # @param identifier A Security identifier (Ticker, FIGI, ISIN, CUSIP, Intrinio ID)
  # @param tag An Intrinio data tag ID or code-name
  # @param [Hash] opts the optional parameters
  # @return [Float]
  describe 'get_security_data_point_number test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_security_data_point_text
  # Get Security Data Point (Text)
  # Returns a text value for the given &#x60;tag&#x60; for the Security with the given &#x60;identifier&#x60;
  # @param identifier A Security identifier (Ticker, FIGI, ISIN, CUSIP, Intrinio ID)
  # @param tag An Intrinio data tag ID or code-name
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'get_security_data_point_text test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_security_historical_data
  # Get Security Historical Data
  # Returns historical values for the given &#x60;tag&#x60; and the Security with the given &#x60;identifier&#x60;
  # @param identifier A Security identifier (Ticker, FIGI, ISIN, CUSIP, Intrinio ID)
  # @param tag An Intrinio data tag ID or code-name
  # @param [Hash] opts the optional parameters
  # @option opts [String] :type Filter by type, when applicable
  # @option opts [Date] :start_date Get historical data on or after this date
  # @option opts [Date] :end_date Get historical date on or before this date
  # @option opts [String] :sort_order Sort by date &#x60;asc&#x60; or &#x60;desc&#x60;
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseSecurityHistoricalData]
  describe 'get_security_historical_data test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_security_stock_price_adjustments
  # Get Stock Price Adjustments for Security
  # Return stock price adjustments for the Security with the given &#x60;identifier&#x60;
  # @param identifier A Security identifier (Ticker, FIGI, ISIN, CUSIP, Intrinio ID)
  # @param [Hash] opts the optional parameters
  # @option opts [Date] :start_date Return price adjustments on or after the date
  # @option opts [Date] :end_date Return price adjustments on or before the date
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseSecurityStockPriceAdjustments]
  describe 'get_security_stock_price_adjustments test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_security_stock_prices
  # Get Stock Prices for Security
  # Return stock prices for the Security with the given &#x60;identifier&#x60;
  # @param identifier A Security identifier (Ticker, FIGI, ISIN, CUSIP, Intrinio ID)
  # @param [Hash] opts the optional parameters
  # @option opts [Date] :start_date Return prices on or after the date
  # @option opts [Date] :end_date Return prices on or before the date
  # @option opts [String] :frequency Return stock prices in the given frequency
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseSecurityStockPrices]
  describe 'get_security_stock_prices test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for screen_securities
  # Screen Securities
  # Screen securities using complex logic
  # @param [Hash] opts the optional parameters
  # @option opts [SecurityScreenGroup] :logic The logic to screen with, consisting of operators, clauses, and nested groups.&lt;br/&gt; See &lt;a href&#x3D;\&quot;/documentation/screener_v2\&quot; target&#x3D;\&quot;_blank\&quot;&gt;screener documentation&lt;/a&gt; for details on how to construct conditions.
  # @option opts [String] :order_column Results returned sorted by this column
  # @option opts [String] :order_direction Sort order to use with the order_column
  # @option opts [BOOLEAN] :primary_only Return only primary securities
  # @return [Array<SecurityScreenResult>]
  describe 'screen_securities test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search_securities
  # Search Securities
  # Searches for Securities matching the text &#x60;query&#x60;
  # @param query 
  # @param [Hash] opts the optional parameters
  # @return [ApiResponseSecurities]
  describe 'search_securities test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
