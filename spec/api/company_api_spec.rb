=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.8.4

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for Intrinio::CompanyApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CompanyApi' do
  before do
    # run before each test
    @instance = Intrinio::CompanyApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CompanyApi' do
    it 'should create an instance of CompanyApi' do
      expect(@instance).to be_instance_of(Intrinio::CompanyApi)
    end
  end

  # unit tests for get_all_companies
  # All Companies
  # Returns all Companies. When parameters are specified, returns matching companies.
  # @param [Hash] opts the optional parameters
  # @option opts [Date] :latest_filing_date Last filing date
  # @option opts [String] :sic Return companies with the given Standard Industrial Classification code
  # @option opts [String] :template Return companies with the given financial statement template
  # @option opts [String] :sector Return companies in the given industry sector
  # @option opts [String] :industry_category Return companies in the given industry category
  # @option opts [String] :industry_group Return companies in the given industry group
  # @option opts [BOOLEAN] :has_fundamentals Return only companies that have fundamentals when true
  # @option opts [BOOLEAN] :has_stock_prices Return only companies that have stock prices when true
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseCompanies]
  describe 'get_all_companies test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_company_news
  # All News
  # Returns all News for all Companies
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseNews]
  describe 'get_all_company_news test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_company
  # Lookup Company
  # Returns the Company with the given &#x60;identifier&#x60;
  # @param identifier A Company identifier (Ticker, CIK, LEI, Intrinio ID)
  # @param [Hash] opts the optional parameters
  # @return [Company]
  describe 'get_company test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_company_data_point_number
  # Data Point (Number) for Company
  # Returns a numeric value for the given &#x60;tag&#x60; for the Company with the given &#x60;identifier&#x60;
  # @param identifier A Company identifier (Ticker, CIK, LEI, Intrinio ID)
  # @param tag An Intrinio data tag ID or code (&lt;a href&#x3D;&#39;https://data.intrinio.com/data-tags&#39;&gt;reference&lt;/a&gt;)
  # @param [Hash] opts the optional parameters
  # @return [Float]
  describe 'get_company_data_point_number test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_company_data_point_text
  # Data Point (Text) for Company
  # Returns a text value for the given &#x60;tag&#x60; for the Company with the given &#x60;identifier&#x60;
  # @param identifier A Company identifier (Ticker, CIK, LEI, Intrinio ID)
  # @param tag An Intrinio data tag ID or code (&lt;a href&#x3D;&#39;https://data.intrinio.com/data-tags&#39;&gt;reference&lt;/a&gt;)
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'get_company_data_point_text test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_company_filings
  # All Filings by Company
  # Returns a complete list of SEC filings for the Company with the given &#x60;identifier&#x60;
  # @param identifier A Company identifier (Ticker, CIK, LEI, Intrinio ID)
  # @param [Hash] opts the optional parameters
  # @option opts [String] :report_type Filter by &lt;a href&#x3D;\&quot;https://docs.intrinio.com/documentation/sec_filing_report_types\&quot; target&#x3D;\&quot;_blank\&quot;&gt;report type&lt;/a&gt;. Separate values with commas to return multiple report types.
  # @option opts [Date] :start_date Filed on or after the given date
  # @option opts [Date] :end_date Filed before or after the given date
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseCompanyFilings]
  describe 'get_company_filings test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_company_fundamentals
  # All Fundamentals by Company
  # Returns all Fundamentals for the Company with the given &#x60;identifier&#x60;. Returns Fundamentals matching parameters when supplied.
  # @param identifier A Company identifier (Ticker, CIK, LEI, Intrinio ID)
  # @param [Hash] opts the optional parameters
  # @option opts [Date] :filed_after Filed on or after this date
  # @option opts [Date] :filed_before Filed on or before this date
  # @option opts [BOOLEAN] :reported_only Only as-reported fundamentals
  # @option opts [Integer] :fiscal_year Only for the given fiscal year
  # @option opts [String] :statement_code Only of the given statement code
  # @option opts [String] :type Only of the given type
  # @option opts [Date] :start_date Only on or after the given date
  # @option opts [Date] :end_date Only on or before the given date
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseCompanyFundamentals]
  describe 'get_company_fundamentals test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_company_historical_data
  # Historical Data for Company
  # Returns historical values for the given &#x60;tag&#x60; and the Company with the given &#x60;identifier&#x60;
  # @param identifier A Company identifier (Ticker, CIK, LEI, Intrinio ID)
  # @param tag An Intrinio data tag ID or code (&lt;a href&#x3D;&#39;https://data.intrinio.com/data-tags&#39;&gt;reference&lt;/a&gt;)
  # @param [Hash] opts the optional parameters
  # @option opts [String] :frequency Return historical data in the given frequency
  # @option opts [String] :type Return historical data for given fiscal period type
  # @option opts [Date] :start_date Return historical data on or after this date
  # @option opts [Date] :end_date Return historical data on or before this date
  # @option opts [String] :sort_order Sort by date &#x60;asc&#x60; or &#x60;desc&#x60;
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseCompanyHistoricalData]
  describe 'get_company_historical_data test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_company_ipos
  # IPOs
  # Returns initial public offerings (IPOs). An IPO is a public offering of private company stock. The act of \&quot;going public\&quot; is initiated by an IPO, at which point the company&#39;s stock trades on a major stock exchange (such as NYSE or NASDAQ). Intrinio covers all upcoming and recent IPOs for US exchanges.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ticker Return IPOs with the given ticker (typically the IPO for the company)
  # @option opts [String] :status Return IPOs with the given status. Upcoming IPOs are scheduled to occur in the future. Priced IPOs have occured and the company should be trading publicly. Withdrawn IPOs were planned to occurr but were withdrawn beforehand
  # @option opts [Date] :start_date Return IPOs on or after the given date
  # @option opts [Date] :end_date Return IPOs on or before the given date
  # @option opts [Integer] :offer_amount_greater_than Return IPOs with an offer dollar amount greater than the given amount
  # @option opts [Integer] :offer_amount_less_than Return IPOs with an offer dollar amount less than the given amount
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseInitialPublicOfferings]
  describe 'get_company_ipos test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_company_news
  # All News by Company
  # Returns news for the Company with the given &#x60;identifier&#x60;
  # @param identifier A Company identifier (Ticker, CIK, LEI, Intrinio ID)
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseCompanyNews]
  describe 'get_company_news test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_company_securities
  # All Securities by Company
  # Returns Securities for the Company with the given &#x60;identifier&#x60;
  # @param identifier A Company identifier (Ticker, CIK, LEI, Intrinio ID)
  # @param [Hash] opts the optional parameters
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseCompanySecurities]
  describe 'get_company_securities test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for lookup_company_fundamental
  # Lookup Fundamental by Company
  # Returns the Fundamental for the Company with the given &#x60;identifier&#x60; and with the given parameters
  # @param identifier A Company identifier (Ticker, CIK, LEI, Intrinio ID)
  # @param statement_code The statement code
  # @param fiscal_period The fiscal period
  # @param fiscal_year The fiscal year
  # @param [Hash] opts the optional parameters
  # @return [Fundamental]
  describe 'lookup_company_fundamental test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search_companies
  # Search Companies
  # Searches for Companies matching the text &#x60;query&#x60;
  # @param query Search parameters
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page_size The number of results to return
  # @return [ApiResponseCompaniesSearch]
  describe 'search_companies test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
