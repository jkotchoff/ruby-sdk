=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://docs.intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.63.2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'spec_helper'

describe Intrinio::Configuration do
  let(:config) { Intrinio::Configuration.default }

  before(:each) do
    # uncomment below to setup host and base_path
    #require 'URI'
    #uri = URI.parse("https://api-v2.intrinio.com")
    #Intrinio.configure do |c|
    #  c.host = uri.host
    #  c.base_path = uri.path
    #end
  end

  describe '#base_url' do
    it 'should have the default value' do
      # uncomment below to test default value of the base path
      #expect(config.base_url).to eq("https://api-v2.intrinio.com")
    end

    it 'should remove trailing slashes' do
      [nil, '', '/', '//'].each do |base_path|
        config.base_path = base_path
        # uncomment below to test trailing slashes
        #expect(config.base_url).to eq("https://api-v2.intrinio.com")
      end
    end
  end
end
