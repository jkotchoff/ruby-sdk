# Intrinio Ruby SDK

intrinio-sdk - the Ruby gem for the Intrinio API

To get an API key, [sign up here](https://intrinio.com/).

Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 2.2.0
- Package version: 2.1.0


## Installation

```sh
gem install intrinio-sdk
```

## Installation From Github

Add the following to your Gemfile:

    gem 'intrinio-sdk', :git => 'https://github.com/intrinio/ruby-sdk.git'


## SDK Code Examples

Code examples for Intrinio SDKs are available at https://github.com/intrinio/sdk-code-samples
    
## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'intrinio-sdk'

# Setup authorization
Intrinio.configure do |config|
  config.api_key['api_key'] = 'YOUR API KEY'
end

company_api = Intrinio::CompanyApi.new

begin
  result = company_api.filter_companies()
  p result
rescue Intrinio::ApiError => e
  puts "Exception when calling CompanyApi->filter_companies: #{e}"
end
```

## API Endpoints

All URIs are relative to *https://api-v2.intrinio.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Intrinio::CompanyApi* | [**get_all_companies**](docs/CompanyApi.md#get_all_companies) | **GET** /companies | All Companies
*Intrinio::CompanyApi* | [**get_all_company_news**](docs/CompanyApi.md#get_all_company_news) | **GET** /companies/news | All News
*Intrinio::CompanyApi* | [**get_company**](docs/CompanyApi.md#get_company) | **GET** /companies/{identifier} | Lookup Company
*Intrinio::CompanyApi* | [**get_company_data_point_number**](docs/CompanyApi.md#get_company_data_point_number) | **GET** /companies/{identifier}/data_point/{tag}/number | Data Point (Number) for Company
*Intrinio::CompanyApi* | [**get_company_data_point_text**](docs/CompanyApi.md#get_company_data_point_text) | **GET** /companies/{identifier}/data_point/{tag}/text | Data Point (Text) for Company
*Intrinio::CompanyApi* | [**get_company_filings**](docs/CompanyApi.md#get_company_filings) | **GET** /companies/{identifier}/filings | All Filings by Company
*Intrinio::CompanyApi* | [**get_company_fundamentals**](docs/CompanyApi.md#get_company_fundamentals) | **GET** /companies/{identifier}/fundamentals | All Fundamentals by Company
*Intrinio::CompanyApi* | [**get_company_historical_data**](docs/CompanyApi.md#get_company_historical_data) | **GET** /companies/{identifier}/historical_data/{tag} | Historical Data for Company
*Intrinio::CompanyApi* | [**get_company_news**](docs/CompanyApi.md#get_company_news) | **GET** /companies/{identifier}/news | All News by Company
*Intrinio::CompanyApi* | [**get_company_securities**](docs/CompanyApi.md#get_company_securities) | **GET** /companies/{identifier}/securities | All Securities by Company
*Intrinio::CompanyApi* | [**lookup_company_fundamental**](docs/CompanyApi.md#lookup_company_fundamental) | **GET** /companies/{identifier}/fundamentals/lookup/{statement_code}/{fiscal_year}/{fiscal_period} | Lookup Fundamental by Company
*Intrinio::CompanyApi* | [**search_companies**](docs/CompanyApi.md#search_companies) | **GET** /companies/search | Search Companies
*Intrinio::DataPointApi* | [**get_data_point_number**](docs/DataPointApi.md#get_data_point_number) | **GET** /data_point/{identifier}/{tag}/number | Data Point (Number)
*Intrinio::DataPointApi* | [**get_data_point_text**](docs/DataPointApi.md#get_data_point_text) | **GET** /data_point/{identifier}/{tag}/text | Data Point (Text)
*Intrinio::DataTagApi* | [**get_all_data_tags**](docs/DataTagApi.md#get_all_data_tags) | **GET** /data_tags | All Data Tags
*Intrinio::DataTagApi* | [**get_data_tag_by_id**](docs/DataTagApi.md#get_data_tag_by_id) | **GET** /data_tags/{identifier} | Lookup Data Tag
*Intrinio::DataTagApi* | [**search_data_tags**](docs/DataTagApi.md#search_data_tags) | **GET** /data_tags/search | Search Data Tags
*Intrinio::FilingApi* | [**get_all_filings**](docs/FilingApi.md#get_all_filings) | **GET** /filings | All Filings
*Intrinio::FilingApi* | [**get_all_notes**](docs/FilingApi.md#get_all_notes) | **GET** /filings/notes | All Filing Notes
*Intrinio::FilingApi* | [**get_filing_by_id**](docs/FilingApi.md#get_filing_by_id) | **GET** /filings/{id} | Lookup Filing
*Intrinio::FilingApi* | [**get_note**](docs/FilingApi.md#get_note) | **GET** /filings/notes/{identifier} | Filing Note by ID
*Intrinio::FilingApi* | [**get_note_html**](docs/FilingApi.md#get_note_html) | **GET** /filings/notes/{identifier}/html | Filing Note HTML
*Intrinio::FilingApi* | [**get_note_text**](docs/FilingApi.md#get_note_text) | **GET** /filings/notes/{identifier}/text | Filing Note Text
*Intrinio::FilingApi* | [**search_notes**](docs/FilingApi.md#search_notes) | **GET** /filings/notes/search | Search Filing Notes
*Intrinio::ForexApi* | [**get_forex_currencies**](docs/ForexApi.md#get_forex_currencies) | **GET** /forex/currencies | Forex Currencies
*Intrinio::ForexApi* | [**get_forex_pairs**](docs/ForexApi.md#get_forex_pairs) | **GET** /forex/pairs | Forex Currency Pairs
*Intrinio::ForexApi* | [**get_forex_prices**](docs/ForexApi.md#get_forex_prices) | **GET** /forex/prices/{pair}/{timeframe} | Forex Currency Prices
*Intrinio::FundamentalsApi* | [**get_fundamental_by_id**](docs/FundamentalsApi.md#get_fundamental_by_id) | **GET** /fundamentals/{id} | Fundamental by ID
*Intrinio::FundamentalsApi* | [**get_fundamental_reported_financials**](docs/FundamentalsApi.md#get_fundamental_reported_financials) | **GET** /fundamentals/{id}/reported_financials | Reported Financials
*Intrinio::FundamentalsApi* | [**get_fundamental_standardized_financials**](docs/FundamentalsApi.md#get_fundamental_standardized_financials) | **GET** /fundamentals/{id}/standardized_financials | Standardized Financials
*Intrinio::FundamentalsApi* | [**lookup_fundamental**](docs/FundamentalsApi.md#lookup_fundamental) | **GET** /fundamentals/lookup/{identifier}/{statement_code}/{fiscal_year}/{fiscal_period} | Lookup Fundamental
*Intrinio::HistoricalDataApi* | [**get_historical_data**](docs/HistoricalDataApi.md#get_historical_data) | **GET** /historical_data/{identifier}/{tag} | Historical Data
*Intrinio::IndexApi* | [**get_all_economic_indices**](docs/IndexApi.md#get_all_economic_indices) | **GET** /indices/economic | All Economic Indices
*Intrinio::IndexApi* | [**get_all_sic_indices**](docs/IndexApi.md#get_all_sic_indices) | **GET** /indices/sic | All SIC Indices
*Intrinio::IndexApi* | [**get_all_stock_market_indices**](docs/IndexApi.md#get_all_stock_market_indices) | **GET** /indices/stock_market | All Stock Market Indices
*Intrinio::IndexApi* | [**get_economic_index_by_id**](docs/IndexApi.md#get_economic_index_by_id) | **GET** /indices/economic/{identifier} | Lookup Economic Index
*Intrinio::IndexApi* | [**get_economic_index_data_point_number**](docs/IndexApi.md#get_economic_index_data_point_number) | **GET** /indices/economic/{identifier}/data_point/{tag}/number | Data Point (Number) for an Economic Index
*Intrinio::IndexApi* | [**get_economic_index_data_point_text**](docs/IndexApi.md#get_economic_index_data_point_text) | **GET** /indices/economic/{identifier}/data_point/{tag}/text | Data Point (Text) for an Economic Index
*Intrinio::IndexApi* | [**get_economic_index_historical_data**](docs/IndexApi.md#get_economic_index_historical_data) | **GET** /indices/economic/{identifier}/historical_data/{tag} | Historical Data for an Economic Index
*Intrinio::IndexApi* | [**get_sic_index_by_id**](docs/IndexApi.md#get_sic_index_by_id) | **GET** /indices/sic/{identifier} | Lookup SIC Index
*Intrinio::IndexApi* | [**get_sic_index_data_point_number**](docs/IndexApi.md#get_sic_index_data_point_number) | **GET** /indices/sic/{identifier}/data_point/{tag}/number | Data Point (Number) for an SIC Index
*Intrinio::IndexApi* | [**get_sic_index_data_point_text**](docs/IndexApi.md#get_sic_index_data_point_text) | **GET** /indices/sic/{identifier}/data_point/{tag}/text | Data Point (Text) for an SIC Index
*Intrinio::IndexApi* | [**get_sic_index_historical_data**](docs/IndexApi.md#get_sic_index_historical_data) | **GET** /indices/sic/{identifier}/historical_data/{tag} | Historical Data for an SIC Index
*Intrinio::IndexApi* | [**get_stock_market_index_by_id**](docs/IndexApi.md#get_stock_market_index_by_id) | **GET** /indices/stock_market/{identifier} | Lookup Stock Market Index
*Intrinio::IndexApi* | [**get_stock_market_index_data_point_number**](docs/IndexApi.md#get_stock_market_index_data_point_number) | **GET** /indices/stock_market/{identifier}/data_point/{tag}/number | Data Point (Number) for Stock Market Index
*Intrinio::IndexApi* | [**get_stock_market_index_data_point_text**](docs/IndexApi.md#get_stock_market_index_data_point_text) | **GET** /indices/stock_market/{identifier}/data_point/{tag}/text | Data Point (Text) for Stock Market Index
*Intrinio::IndexApi* | [**get_stock_market_index_historical_data**](docs/IndexApi.md#get_stock_market_index_historical_data) | **GET** /indices/stock_market/{identifier}/historical_data/{tag} | Historical Data for Stock Market Index
*Intrinio::IndexApi* | [**search_economic_indices**](docs/IndexApi.md#search_economic_indices) | **GET** /indices/economic/search | Search Economic Indices
*Intrinio::IndexApi* | [**search_sic_indices**](docs/IndexApi.md#search_sic_indices) | **GET** /indices/sic/search | Search SIC Indices
*Intrinio::IndexApi* | [**search_stock_markets_indices**](docs/IndexApi.md#search_stock_markets_indices) | **GET** /indices/stock_market/search | Search Stock Market Indices
*Intrinio::MunicipalityApi* | [**get_all_municipalities**](docs/MunicipalityApi.md#get_all_municipalities) | **GET** /municipalities | All Municipalities
*Intrinio::MunicipalityApi* | [**get_municipality_by_id**](docs/MunicipalityApi.md#get_municipality_by_id) | **GET** /municipalities/{id} | Municipality by ID
*Intrinio::MunicipalityApi* | [**get_municipality_financials**](docs/MunicipalityApi.md#get_municipality_financials) | **GET** /municipalities/{id}/financials | Financials for a Municipality
*Intrinio::SecurityApi* | [**get_all_securities**](docs/SecurityApi.md#get_all_securities) | **GET** /securities | All Securities
*Intrinio::SecurityApi* | [**get_security_by_id**](docs/SecurityApi.md#get_security_by_id) | **GET** /securities/{identifier} | Lookup Security
*Intrinio::SecurityApi* | [**get_security_data_point_number**](docs/SecurityApi.md#get_security_data_point_number) | **GET** /securities/{identifier}/data_point/{tag}/number | Data Point (Number) for Security
*Intrinio::SecurityApi* | [**get_security_data_point_text**](docs/SecurityApi.md#get_security_data_point_text) | **GET** /securities/{identifier}/data_point/{tag}/text | Data Point (Text) for Security
*Intrinio::SecurityApi* | [**get_security_historical_data**](docs/SecurityApi.md#get_security_historical_data) | **GET** /securities/{identifier}/historical_data/{tag} | Historical Data for Security
*Intrinio::SecurityApi* | [**get_security_intraday_prices**](docs/SecurityApi.md#get_security_intraday_prices) | **GET** /securities/{identifier}/prices/intraday | Intraday Stock Prices for Security
*Intrinio::SecurityApi* | [**get_security_latest_dividend_record**](docs/SecurityApi.md#get_security_latest_dividend_record) | **GET** /securities/{identifier}/dividends/latest | Lastest Dividend Record for Security
*Intrinio::SecurityApi* | [**get_security_latest_earnings_record**](docs/SecurityApi.md#get_security_latest_earnings_record) | **GET** /securities/{identifier}/earnings/latest | Lastest Earnings Record for Security
*Intrinio::SecurityApi* | [**get_security_realtime_price**](docs/SecurityApi.md#get_security_realtime_price) | **GET** /securities/{identifier}/prices/realtime | Realtime Stock Price for Security
*Intrinio::SecurityApi* | [**get_security_stock_price_adjustments**](docs/SecurityApi.md#get_security_stock_price_adjustments) | **GET** /securities/{identifier}/prices/adjustments | Stock Price Adjustments by Security
*Intrinio::SecurityApi* | [**get_security_stock_prices**](docs/SecurityApi.md#get_security_stock_prices) | **GET** /securities/{identifier}/prices | Stock Prices by Security
*Intrinio::SecurityApi* | [**screen_securities**](docs/SecurityApi.md#screen_securities) | **POST** /securities/screen | Screen Securities
*Intrinio::SecurityApi* | [**search_securities**](docs/SecurityApi.md#search_securities) | **GET** /securities/search | Search Securities
*Intrinio::StockExchangeApi* | [**get_all_stock_exchanges**](docs/StockExchangeApi.md#get_all_stock_exchanges) | **GET** /stock_exchanges | All Stock Exchanges
*Intrinio::StockExchangeApi* | [**get_stock_exchange_by_id**](docs/StockExchangeApi.md#get_stock_exchange_by_id) | **GET** /stock_exchanges/{identifier} | Lookup Stock Exchange
*Intrinio::StockExchangeApi* | [**get_stock_exchange_price_adjustments**](docs/StockExchangeApi.md#get_stock_exchange_price_adjustments) | **GET** /stock_exchanges/{identifier}/prices/adjustments | Stock Price Adjustments by Exchange
*Intrinio::StockExchangeApi* | [**get_stock_exchange_prices**](docs/StockExchangeApi.md#get_stock_exchange_prices) | **GET** /stock_exchanges/{identifier}/prices | Stock Prices by Exchange
*Intrinio::StockExchangeApi* | [**get_stock_exchange_realtime_prices**](docs/StockExchangeApi.md#get_stock_exchange_realtime_prices) | **GET** /stock_exchanges/{identifier}/prices/realtime | Realtime Stock Prices by Exchange
*Intrinio::StockExchangeApi* | [**get_stock_exchange_securities**](docs/StockExchangeApi.md#get_stock_exchange_securities) | **GET** /stock_exchanges/{identifier}/securities | Securities by Exchange


## Models

 - [Intrinio::ApiResponseCompanies](docs/ApiResponseCompanies.md)
 - [Intrinio::ApiResponseCompaniesSearch](docs/ApiResponseCompaniesSearch.md)
 - [Intrinio::ApiResponseCompanyFilings](docs/ApiResponseCompanyFilings.md)
 - [Intrinio::ApiResponseCompanyFundamentals](docs/ApiResponseCompanyFundamentals.md)
 - [Intrinio::ApiResponseCompanyHistoricalData](docs/ApiResponseCompanyHistoricalData.md)
 - [Intrinio::ApiResponseCompanyNews](docs/ApiResponseCompanyNews.md)
 - [Intrinio::ApiResponseCompanySecurities](docs/ApiResponseCompanySecurities.md)
 - [Intrinio::ApiResponseDataTags](docs/ApiResponseDataTags.md)
 - [Intrinio::ApiResponseDataTagsSearch](docs/ApiResponseDataTagsSearch.md)
 - [Intrinio::ApiResponseEconomicIndexHistoricalData](docs/ApiResponseEconomicIndexHistoricalData.md)
 - [Intrinio::ApiResponseEconomicIndices](docs/ApiResponseEconomicIndices.md)
 - [Intrinio::ApiResponseEconomicIndicesSearch](docs/ApiResponseEconomicIndicesSearch.md)
 - [Intrinio::ApiResponseFilingNotes](docs/ApiResponseFilingNotes.md)
 - [Intrinio::ApiResponseFilingNotesSearch](docs/ApiResponseFilingNotesSearch.md)
 - [Intrinio::ApiResponseFilings](docs/ApiResponseFilings.md)
 - [Intrinio::ApiResponseForexCurrencies](docs/ApiResponseForexCurrencies.md)
 - [Intrinio::ApiResponseForexPairs](docs/ApiResponseForexPairs.md)
 - [Intrinio::ApiResponseForexPrices](docs/ApiResponseForexPrices.md)
 - [Intrinio::ApiResponseHistoricalData](docs/ApiResponseHistoricalData.md)
 - [Intrinio::ApiResponseMunicipalities](docs/ApiResponseMunicipalities.md)
 - [Intrinio::ApiResponseMunicipalitiyFinancials](docs/ApiResponseMunicipalitiyFinancials.md)
 - [Intrinio::ApiResponseNews](docs/ApiResponseNews.md)
 - [Intrinio::ApiResponseReportedFinancials](docs/ApiResponseReportedFinancials.md)
 - [Intrinio::ApiResponseSICIndexHistoricalData](docs/ApiResponseSICIndexHistoricalData.md)
 - [Intrinio::ApiResponseSICIndices](docs/ApiResponseSICIndices.md)
 - [Intrinio::ApiResponseSICIndicesSearch](docs/ApiResponseSICIndicesSearch.md)
 - [Intrinio::ApiResponseSecurities](docs/ApiResponseSecurities.md)
 - [Intrinio::ApiResponseSecuritiesSearch](docs/ApiResponseSecuritiesSearch.md)
 - [Intrinio::ApiResponseSecurityHistoricalData](docs/ApiResponseSecurityHistoricalData.md)
 - [Intrinio::ApiResponseSecurityIntradayPrices](docs/ApiResponseSecurityIntradayPrices.md)
 - [Intrinio::ApiResponseSecurityStockPriceAdjustments](docs/ApiResponseSecurityStockPriceAdjustments.md)
 - [Intrinio::ApiResponseSecurityStockPrices](docs/ApiResponseSecurityStockPrices.md)
 - [Intrinio::ApiResponseStandardizedFinancials](docs/ApiResponseStandardizedFinancials.md)
 - [Intrinio::ApiResponseStockExchangeRealtimeStockPrices](docs/ApiResponseStockExchangeRealtimeStockPrices.md)
 - [Intrinio::ApiResponseStockExchangeSecurities](docs/ApiResponseStockExchangeSecurities.md)
 - [Intrinio::ApiResponseStockExchangeStockPriceAdjustments](docs/ApiResponseStockExchangeStockPriceAdjustments.md)
 - [Intrinio::ApiResponseStockExchangeStockPrices](docs/ApiResponseStockExchangeStockPrices.md)
 - [Intrinio::ApiResponseStockExchanges](docs/ApiResponseStockExchanges.md)
 - [Intrinio::ApiResponseStockMarketIndexHistoricalData](docs/ApiResponseStockMarketIndexHistoricalData.md)
 - [Intrinio::ApiResponseStockMarketIndices](docs/ApiResponseStockMarketIndices.md)
 - [Intrinio::ApiResponseStockMarketIndicesSearch](docs/ApiResponseStockMarketIndicesSearch.md)
 - [Intrinio::Company](docs/Company.md)
 - [Intrinio::CompanyFiling](docs/CompanyFiling.md)
 - [Intrinio::CompanyNews](docs/CompanyNews.md)
 - [Intrinio::CompanyNewsSummary](docs/CompanyNewsSummary.md)
 - [Intrinio::CompanySummary](docs/CompanySummary.md)
 - [Intrinio::DataTag](docs/DataTag.md)
 - [Intrinio::DataTagSummary](docs/DataTagSummary.md)
 - [Intrinio::DividendRecord](docs/DividendRecord.md)
 - [Intrinio::EarningsRecord](docs/EarningsRecord.md)
 - [Intrinio::EconomicIndex](docs/EconomicIndex.md)
 - [Intrinio::EconomicIndexSummary](docs/EconomicIndexSummary.md)
 - [Intrinio::Filing](docs/Filing.md)
 - [Intrinio::FilingNote](docs/FilingNote.md)
 - [Intrinio::FilingNoteFiling](docs/FilingNoteFiling.md)
 - [Intrinio::FilingNoteSummary](docs/FilingNoteSummary.md)
 - [Intrinio::FilingSummary](docs/FilingSummary.md)
 - [Intrinio::ForexCurrency](docs/ForexCurrency.md)
 - [Intrinio::ForexPair](docs/ForexPair.md)
 - [Intrinio::ForexPrice](docs/ForexPrice.md)
 - [Intrinio::Fundamental](docs/Fundamental.md)
 - [Intrinio::FundamentalSummary](docs/FundamentalSummary.md)
 - [Intrinio::HistoricalData](docs/HistoricalData.md)
 - [Intrinio::IntradayStockPrice](docs/IntradayStockPrice.md)
 - [Intrinio::Municipality](docs/Municipality.md)
 - [Intrinio::MunicipalityFinancial](docs/MunicipalityFinancial.md)
 - [Intrinio::RealtimeStockPrice](docs/RealtimeStockPrice.md)
 - [Intrinio::RealtimeStockPriceSecurity](docs/RealtimeStockPriceSecurity.md)
 - [Intrinio::ReportedFinancial](docs/ReportedFinancial.md)
 - [Intrinio::ReportedTag](docs/ReportedTag.md)
 - [Intrinio::SICIndex](docs/SICIndex.md)
 - [Intrinio::Security](docs/Security.md)
 - [Intrinio::SecurityScreenClause](docs/SecurityScreenClause.md)
 - [Intrinio::SecurityScreenGroup](docs/SecurityScreenGroup.md)
 - [Intrinio::SecurityScreenResult](docs/SecurityScreenResult.md)
 - [Intrinio::SecurityScreenResultData](docs/SecurityScreenResultData.md)
 - [Intrinio::SecuritySummary](docs/SecuritySummary.md)
 - [Intrinio::StandardizedFinancial](docs/StandardizedFinancial.md)
 - [Intrinio::StockExchange](docs/StockExchange.md)
 - [Intrinio::StockMarketIndex](docs/StockMarketIndex.md)
 - [Intrinio::StockMarketIndexSummary](docs/StockMarketIndexSummary.md)
 - [Intrinio::StockPrice](docs/StockPrice.md)
 - [Intrinio::StockPriceAdjustment](docs/StockPriceAdjustment.md)
 - [Intrinio::StockPriceAdjustmentSummary](docs/StockPriceAdjustmentSummary.md)
 - [Intrinio::StockPriceSummary](docs/StockPriceSummary.md)

