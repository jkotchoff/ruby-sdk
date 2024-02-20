=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://docs.intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.52.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Intrinio::ApiResponseSICIndicesSearch
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ApiResponseSICIndicesSearch' do
  before do
    # run before each test
    @instance = Intrinio::ApiResponseSICIndicesSearch.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ApiResponseSICIndicesSearch' do
    it 'should create an instance of ApiResponseSICIndicesSearch' do
      expect(@instance).to be_instance_of(Intrinio::ApiResponseSICIndicesSearch)
    end
  end
  describe 'test attribute "indices"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

