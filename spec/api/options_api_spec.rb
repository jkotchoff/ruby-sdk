=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://docs.intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.53.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'spec_helper'
require 'json'

# Unit tests for Intrinio::OptionsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OptionsApi' do
  before do
    # run before each test
    @instance = Intrinio::OptionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OptionsApi' do
    it 'should create an instance of OptionsApi' do
      expect(@instance).to be_instance_of(Intrinio::OptionsApi)
    end
  end

  # unit tests for get_all_options_tickers
  # Options Tickers
  # Returns all tickers that have existing options contracts.
  # @param [Hash] opts the optional parameters
  # @return [ApiResponseOptionsTickers]
  describe 'get_all_options_tickers test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_option_expirations_realtime
  # Options Expirations
  # Returns a list of all current and upcoming option contract expiration dates for a particular symbol.
  # @param symbol The option symbol, corresponding to the underlying security.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :after Return option contract expiration dates after this date.
  # @option opts [String] :before Return option contract expiration dates before this date.
  # @option opts [String] :source Realtime or 15-minute delayed contracts.
  # @return [ApiResponseOptionsExpirations]
  describe 'get_option_expirations_realtime test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_option_strikes_realtime
  # Option Strikes Realtime
  # Returns a list of the latest top of the order book size and premium (bid / ask), the latest trade size and premium as well as the greeks and implied volatility for all call/put contracts that match the strike and symbol specified.
  # @param symbol The option symbol, corresponding to the underlying security.
  # @param strike The strike price of the option contract. This will return options contracts with strike price equal to this price.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :source Realtime or delayed.
  # @option opts [String] :stock_price_source Source for underlying price for calculating Greeks.
  # @option opts [String] :model Model for calculating Greek values. Default is black_scholes.
  # @option opts [BOOLEAN] :show_extended_price Whether to include open close high low type fields.
  # @return [ApiResponseOptionsChainRealtime]
  describe 'get_option_strikes_realtime test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_options
  # Options
  # Returns a list of all securities that have options listed and are tradable on a US market exchange. Useful to retrieve the entire universe.  Available via a 3rd party, contact sales for a trial.
  # @param symbol The option symbol, corresponding to the underlying security.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :type The option contract type.
  # @option opts [Float] :strike The strike price of the option contract. This will return options contracts with strike price equal to this price.
  # @option opts [Float] :strike_greater_than The strike price of the option contract. This will return options contracts with strike prices greater than this price.
  # @option opts [Float] :strike_less_than The strike price of the option contract. This will return options contracts with strike prices less than this price.
  # @option opts [String] :expiration The expiration date of the option contract. This will return options contracts with expiration dates on this date.
  # @option opts [String] :expiration_after The expiration date of the option contract. This will return options contracts with expiration dates after this date.
  # @option opts [String] :expiration_before The expiration date of the option contract. This will return options contracts with expiration dates before this date.
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseOptions]
  describe 'get_options test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_options_by_symbol_realtime
  # Options by Symbol Realtime
  # Returns a list of all securities that have options listed and are tradable on a US market exchange. Useful to retrieve the entire universe.
  # @param symbol The option symbol, corresponding to the underlying security.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :type The option contract type.
  # @option opts [Float] :strike The strike price of the option contract. This will return options contracts with strike price equal to this price.
  # @option opts [Float] :strike_greater_than The strike price of the option contract. This will return options contracts with strike prices greater than this price.
  # @option opts [Float] :strike_less_than The strike price of the option contract. This will return options contracts with strike prices less than this price.
  # @option opts [String] :expiration The expiration date of the option contract. This will return options contracts with expiration dates on this date.
  # @option opts [String] :expiration_after The expiration date of the option contract. This will return options contracts with expiration dates after this date.
  # @option opts [String] :expiration_before The expiration date of the option contract. This will return options contracts with expiration dates before this date.
  # @option opts [String] :source Realtime or 15-minute delayed contracts.
  # @return [ApiResponseOptionsRealtime]
  describe 'get_options_by_symbol_realtime test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_options_chain
  # Options Chain
  # Returns a list of the historical end-of-day top of the order book size and premium (bid / ask), the latest trade size and premium as well as the greeks and implied volatility for all option contracts currently associated with the option chain.  Available via a 3rd party, contact sales for a trial.
  # @param symbol The option symbol, corresponding to the underlying security.
  # @param expiration The expiration date of the options contract
  # @param [Hash] opts the optional parameters
  # @option opts [Date] :date The date of the option price. Returns option prices on this date.
  # @option opts [String] :type The option contract type.
  # @option opts [Float] :strike The strike price of the option contract. This will return options contracts with strike price equal to this price.
  # @option opts [Float] :strike_greater_than The strike price of the option contract. This will return options contracts with strike prices greater than this price.
  # @option opts [Float] :strike_less_than The strike price of the option contract. This will return options contracts with strike prices less than this price.
  # @option opts [String] :moneyness The moneyness of the options contracts to return. &#39;all&#39; will return all options contracts. &#39;in_the_money&#39; will return options contracts that are in the money (call options with strike prices below the current price, put options with strike prices above the current price). &#39;out_of_they_money&#39; will return options contracts that are out of the money (call options with strike prices above the current price, put options with strike prices below the current price). &#39;near_the_money&#39; will return options contracts that are $0.50 or less away from being in the money.
  # @option opts [Integer] :page_size The number of results to return
  # @return [ApiResponseOptionsChain]
  describe 'get_options_chain test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_options_chain_eod
  # Options Chain EOD
  # Returns all EOD options contracts and their prices for the given symbol and expiration date.
  # @param symbol The option symbol, corresponding to the underlying security.
  # @param expiration The expiration date of the options contract
  # @param [Hash] opts the optional parameters
  # @option opts [String] :type The option contract type.
  # @option opts [Float] :strike The strike price of the option contract. This will return options contracts with strike price equal to this price.
  # @option opts [Float] :strike_greater_than The strike price of the option contract. This will return options contracts with strike prices greater than this price.
  # @option opts [Float] :strike_less_than The strike price of the option contract. This will return options contracts with strike prices less than this price.
  # @option opts [Date] :date The date to retrieve prices for
  # @return [ApiResponseOptionsChainEod]
  describe 'get_options_chain_eod test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_options_chain_realtime
  # Options Chain Realtime
  # Returns a list of the latest National Best Bid &amp; Offer (NBBO) top of the order book size and premium (bid / ask), the latest trade size and premium as well as the greeks and implied volatility for all option contracts currently associated with the option chain.
  # @param symbol The option symbol, corresponding to the underlying security.
  # @param expiration The expiration date of the options contract
  # @param [Hash] opts the optional parameters
  # @option opts [String] :source Realtime or 15-minute delayed contracts.
  # @option opts [String] :type The option contract type.
  # @option opts [Float] :strike The strike price of the option contract. This will return options contracts with strike price equal to this price.
  # @option opts [Float] :strike_greater_than The strike price of the option contract. This will return options contracts with strike prices greater than this price.
  # @option opts [Float] :strike_less_than The strike price of the option contract. This will return options contracts with strike prices less than this price.
  # @option opts [Float] :volume_greater_than The volume of the option contract. This will return options contracts with volumes greater than this amount.
  # @option opts [Float] :volume_less_than The volume of the option contract. This will return options contracts with volumes less than this amout.
  # @option opts [Float] :open_interest_greater_than The open interest of the option contract. This will return options contracts with open interest greater than this amount.
  # @option opts [Float] :open_interest_less_than The open interest of the option contract. This will return options contracts with open interest less than this amount.
  # @option opts [String] :moneyness The moneyness of the options contracts to return. &#39;all&#39; will return all options contracts. &#39;in_the_money&#39; will return options contracts that are in the money (call options with strike prices below the current price, put options with strike prices above the current price). &#39;out_of_they_money&#39; will return options contracts that are out of the money (call options with strike prices above the current price, put options with strike prices below the current price). &#39;near_the_money&#39; will return options contracts that are $0.50 or less away from being in the money.  Requires subscription to realtime stock price data.
  # @option opts [String] :stock_price_source Source for underlying price for calculating Greeks.
  # @option opts [String] :model Model for calculating Greek values. Default is black_scholes.
  # @option opts [BOOLEAN] :show_extended_price Whether to include open close high low type fields.
  # @return [ApiResponseOptionsChainRealtime]
  describe 'get_options_chain_realtime test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_options_expirations
  # Options Expirations
  # Returns a list of all current and upcoming option contract expiration dates for a particular symbol.  Available via a 3rd party, contact sales for a trial.
  # @param symbol The option symbol, corresponding to the underlying security.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :after Return option contract expiration dates after this date.
  # @option opts [String] :before Return option contract expiration dates before this date.
  # @return [ApiResponseOptionsExpirations]
  describe 'get_options_expirations test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_options_expirations_eod
  # Options Expirations
  # Returns a list of all current and upcoming option contract expiration dates for a particular symbol.
  # @param symbol The option symbol, corresponding to the underlying security.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :after Return option contract expiration dates after this date.
  # @option opts [String] :before Return option contract expiration dates before this date.
  # @return [ApiResponseOptionsExpirations]
  describe 'get_options_expirations_eod test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_options_interval_by_contract
  # Options Intervals By Contract
  # Returns a list of interval data points for a contract.
  # @param identifier The Intrinio ID or code of the options contract to request intervals for.
  # @param interval_size The time length of the interval.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :source Realtime or 15-minute delayed contracts.
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [DateTime] :end_time The inclusive UTC date and time the intervals end at.
  # @return [OptionIntervalsResult]
  describe 'get_options_interval_by_contract test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_options_interval_movers
  # Options Intervals Movers
  # Returns a list of intervals for the biggest movers over the last hour interval.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :source Realtime or 15-minute delayed contracts.
  # @option opts [DateTime] :open_time The inclusive UTC date and time the interval opens at.
  # @return [OptionIntervalsMoversResult]
  describe 'get_options_interval_movers test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_options_interval_movers_change
  # Options Intervals Movers By Change
  # Returns a list of intervals for the biggest movers by change over the last hour interval.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :source Realtime or 15-minute delayed contracts.
  # @option opts [DateTime] :open_time The inclusive UTC date and time the interval opens at.
  # @return [OptionIntervalsMoversResult]
  describe 'get_options_interval_movers_change test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_options_interval_movers_volume
  # Options Intervals Movers By Volume
  # Returns a list of intervals for the biggest movers by volume over the last hour interval.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :source Realtime or 15-minute delayed contracts.
  # @option opts [DateTime] :open_time The inclusive UTC date and time the interval opens at.
  # @return [OptionIntervalsMoversResult]
  describe 'get_options_interval_movers_volume test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_options_prices
  # Option Prices
  # Returns all price data from inception to expiration for a particular contract.
  # @param identifier The Intrinio ID or code of the options contract to request prices for.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :start_date Return option contract prices on or after this date.
  # @option opts [String] :end_date Return option contract prices on or before this date.
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseOptionPrices]
  describe 'get_options_prices test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_options_prices_batch_realtime
  # Option Prices Batch Realtime
  # Returns a list of latest price data for up to 250 option contracts per request.
  # @param body The contract symbols for which to return options prices for.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :source Realtime or 15-minute delayed contracts.
  # @option opts [BOOLEAN] :show_stats Whether to include Greek calculations or not.
  # @option opts [String] :stock_price_source Source for underlying price for calculating Greeks.
  # @option opts [String] :model Model for calculating Greek values. Default is black_scholes.
  # @option opts [BOOLEAN] :show_extended_price Whether to include open close high low type fields.
  # @return [ApiResponseOptionsPricesBatchRealtime]
  describe 'get_options_prices_batch_realtime test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_options_prices_eod
  # Option Prices EOD
  # Returns all option prices for a given option contract identifier.
  # @param identifier The Intrinio ID or code of the options contract to request prices for.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @option opts [Date] :start_date The start date to retrieve prices for
  # @option opts [Date] :end_date The end date to retrieve prices for
  # @return [ApiResponseOptionsPricesEod]
  describe 'get_options_prices_eod test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_options_prices_realtime
  # Option Prices Realtime
  # Returns all option prices for a given option contract identifier.
  # @param identifier The Intrinio ID or code of the options contract to request prices for.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :source Realtime or 15-minute delayed contracts.
  # @option opts [String] :stock_price_source Source for underlying price for calculating Greeks.
  # @option opts [String] :model Model for calculating Greek values. Default is black_scholes.
  # @option opts [BOOLEAN] :show_extended_price Whether to include open close high low type fields.
  # @return [ApiResponseOptionsPriceRealtime]
  describe 'get_options_prices_realtime test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_options_snapshots
  # Option Prices Realtime Snapshot
  # Returns all options snapshots for the queried interval with links to download.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :source Realtime or 15-minute delayed contracts.
  # @option opts [DateTime] :at_datetime The UTC date and time (with url-encoded spaces) the snapshot will cover.
  # @return [OptionSnapshotsResult]
  describe 'get_options_snapshots test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_options_stats_realtime
  # Option Stats Realtime
  # Returns all option stats (greeks and implied volatility) as well as the underlying factors used to calculate them, for a particular option contract.
  # @param identifier The Intrinio ID or code of the options contract to request prices for.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :source Realtime or 15-minute delayed contracts.
  # @option opts [BOOLEAN] :show_extended_price Whether to include open close high low type fields.
  # @return [ApiResponseOptionsStatsRealtime]
  describe 'get_options_stats_realtime test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_unusual_activity
  # Options Unusual Activity
  # Returns unusual options activity for a particular company across all option chains. Unusual options activity includes large trades, sweeps, and block trades.
  # @param symbol The option symbol, corresponding to the underlying security.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :source Realtime or 15-minute delayed contracts.
  # @return [ApiResponseOptionsUnusualActivity]
  describe 'get_unusual_activity test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_unusual_activity_intraday
  # Options Unusual Activity Intraday
  # Returns unusual trades for a given identifier within the query parameters.
  # @param symbol The option symbol, corresponding to the underlying security.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :activity_type The unusual activity type to query for.
  # @option opts [String] :sentiment The sentiment type to query for.
  # @option opts [Date] :start_date Return unusual activity on or after this date.
  # @option opts [Date] :end_date Return unusual activity on or before this date.
  # @option opts [Object] :minimum_total_value The inclusive minimum total value for the unusual activity.
  # @option opts [Object] :maximum_total_value The inclusive maximum total value for the unusual activity.
  # @return [ApiResponseOptionsUnusualActivity]
  describe 'get_unusual_activity_intraday test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_unusual_activity_universal
  # Options Unusual Activity Universal
  # Returns the latest unusual options activity across all US companies with across all option chains. Unusual options activity includes large trades, sweeps, and block trades.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :source Realtime or 15-minute delayed contracts.
  # @return [ApiResponseOptionsUnusualActivity]
  describe 'get_unusual_activity_universal test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_unusual_activity_universal_intraday
  # Options Unusual Activity Universal Intraday
  # Returns unusual trades for all underlying security symbols within the query parameters.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :activity_type The unusual activity type to query for.
  # @option opts [String] :sentiment The sentiment type to query for.
  # @option opts [Date] :start_date Return unusual activity on or after this date.
  # @option opts [Date] :end_date Return unusual activity on or before this date.
  # @option opts [Object] :minimum_total_value The inclusive minimum total value for the unusual activity.
  # @option opts [Object] :maximum_total_value The inclusive maximum total value for the unusual activity.
  # @return [ApiResponseOptionsUnusualActivity]
  describe 'get_unusual_activity_universal_intraday test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
