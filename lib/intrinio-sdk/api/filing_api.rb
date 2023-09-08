=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://docs.intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.46.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require "uri"

module Intrinio
  class FilingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # All Filings
    # Returns pertinent filing reference data for a specific company filing or latest filings for all companies. Useful for tracking the latest filings submitted and updating your database accordingly with the new information.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :company Filings for the given &#x60;company&#x60; identifier (ticker, CIK, LEI, Intrinio ID)
    # @option opts [String] :report_type Filter by report type. Separate values with commas to return multiple The filing &lt;a href&#x3D;\&quot;https://docs.intrinio.com/documentation/sec_filing_report_types\&quot; target&#x3D;\&quot;_blank\&quot;&gt;report types&lt;/a&gt;.
    # @option opts [Date] :start_date Filed on or after the given date
    # @option opts [Date] :end_date Filed before or after the given date
    # @option opts [String] :industry_category Return companies in the given industry category
    # @option opts [String] :industry_group Return companies in the given industry group
    # @option opts [BOOLEAN] :thea_enabled Return filings that have been read by our Thea NLP and are ready for our answers endpoint
    # @option opts [Integer] :page_size The number of results to return (default to 100)
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [ApiResponseFilings]
    def get_all_filings(opts = {})
      data, _status_code, _headers = get_all_filings_with_http_info(opts)
      return data
    end

    # All Filings
    # Returns pertinent filing reference data for a specific company filing or latest filings for all companies. Useful for tracking the latest filings submitted and updating your database accordingly with the new information.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :company Filings for the given &#x60;company&#x60; identifier (ticker, CIK, LEI, Intrinio ID)
    # @option opts [String] :report_type Filter by report type. Separate values with commas to return multiple The filing &lt;a href&#x3D;\&quot;https://docs.intrinio.com/documentation/sec_filing_report_types\&quot; target&#x3D;\&quot;_blank\&quot;&gt;report types&lt;/a&gt;.
    # @option opts [Date] :start_date Filed on or after the given date
    # @option opts [Date] :end_date Filed before or after the given date
    # @option opts [String] :industry_category Return companies in the given industry category
    # @option opts [String] :industry_group Return companies in the given industry group
    # @option opts [BOOLEAN] :thea_enabled Return filings that have been read by our Thea NLP and are ready for our answers endpoint
    # @option opts [Integer] :page_size The number of results to return
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<(ApiResponseFilings, Fixnum, Hash)>] ApiResponseFilings data, response status code and response headers
    def get_all_filings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FilingApi.get_all_filings ..."
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 10000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling FilingApi.get_all_filings, must be smaller than or equal to 10000.'
      end

      # resource path
      local_var_path = "/filings"

      # query parameters
      query_params = {}
      query_params[:'company'] = opts[:'company'] if !opts[:'company'].nil?
      query_params[:'report_type'] = opts[:'report_type'] if !opts[:'report_type'].nil?
      query_params[:'start_date'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'end_date'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'industry_category'] = opts[:'industry_category'] if !opts[:'industry_category'].nil?
      query_params[:'industry_group'] = opts[:'industry_group'] if !opts[:'industry_group'].nil?
      query_params[:'thea_enabled'] = opts[:'thea_enabled'] if !opts[:'thea_enabled'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'next_page'] = opts[:'next_page'] if !opts[:'next_page'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ApiResponseFilings')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilingApi#get_all_filings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # All Filing Notes
    # Returns a list of the latest XBRL filing note sections from the SEC 10-K and 10-Q statements. The returned Intrinio XBRL filing note ID can then be utilized with the “Filing Note by ID” endpoint to retrieve the contents of the note in HTML or text format.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :company A Company identifier (Ticker, CIK, LEI, Intrinio ID)
    # @option opts [String] :report_type Notes contained in filings that match the given &lt;a href&#x3D;\&quot;https://docs.intrinio.com/documentation/sec_filing_report_types\&quot; target&#x3D;\&quot;_blank\&quot;&gt;report type&lt;/a&gt;
    # @option opts [Date] :filing_start_date Limit search to filings on or after this date
    # @option opts [Date] :filing_end_date Limit search to filings on or before this date
    # @option opts [Date] :period_ended_start_date Limit search to filings with a period end date on or after this date
    # @option opts [Date] :period_ended_end_date Limit search to filings with a period end date on or before this date
    # @option opts [Integer] :page_size The number of results to return (default to 100)
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [ApiResponseFilingNotes]
    def get_all_notes(opts = {})
      data, _status_code, _headers = get_all_notes_with_http_info(opts)
      return data
    end

    # All Filing Notes
    # Returns a list of the latest XBRL filing note sections from the SEC 10-K and 10-Q statements. The returned Intrinio XBRL filing note ID can then be utilized with the “Filing Note by ID” endpoint to retrieve the contents of the note in HTML or text format.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :company A Company identifier (Ticker, CIK, LEI, Intrinio ID)
    # @option opts [String] :report_type Notes contained in filings that match the given &lt;a href&#x3D;\&quot;https://docs.intrinio.com/documentation/sec_filing_report_types\&quot; target&#x3D;\&quot;_blank\&quot;&gt;report type&lt;/a&gt;
    # @option opts [Date] :filing_start_date Limit search to filings on or after this date
    # @option opts [Date] :filing_end_date Limit search to filings on or before this date
    # @option opts [Date] :period_ended_start_date Limit search to filings with a period end date on or after this date
    # @option opts [Date] :period_ended_end_date Limit search to filings with a period end date on or before this date
    # @option opts [Integer] :page_size The number of results to return
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<(ApiResponseFilingNotes, Fixnum, Hash)>] ApiResponseFilingNotes data, response status code and response headers
    def get_all_notes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FilingApi.get_all_notes ..."
      end
      if @api_client.config.client_side_validation && opts[:'report_type'] && !['10-Q', '10-K'].include?(opts[:'report_type'])
        fail ArgumentError, 'invalid value for "report_type", must be one of 10-Q, 10-K'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 10000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling FilingApi.get_all_notes, must be smaller than or equal to 10000.'
      end

      # resource path
      local_var_path = "/filings/notes"

      # query parameters
      query_params = {}
      query_params[:'company'] = opts[:'company'] if !opts[:'company'].nil?
      query_params[:'report_type'] = opts[:'report_type'] if !opts[:'report_type'].nil?
      query_params[:'filing_start_date'] = opts[:'filing_start_date'] if !opts[:'filing_start_date'].nil?
      query_params[:'filing_end_date'] = opts[:'filing_end_date'] if !opts[:'filing_end_date'].nil?
      query_params[:'period_ended_start_date'] = opts[:'period_ended_start_date'] if !opts[:'period_ended_start_date'].nil?
      query_params[:'period_ended_end_date'] = opts[:'period_ended_end_date'] if !opts[:'period_ended_end_date'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'next_page'] = opts[:'next_page'] if !opts[:'next_page'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ApiResponseFilingNotes')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilingApi#get_all_notes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Filing Answers
    # 
    # @param identifier A Filing identifier
    # @param query The query to ask the Thea API
    # @param [Hash] opts the optional parameters
    # @return [ApiResponseFilingAnswers]
    def get_filing_answers(identifier, query, opts = {})
      data, _status_code, _headers = get_filing_answers_with_http_info(identifier, query, opts)
      return data
    end

    # Filing Answers
    # 
    # @param identifier A Filing identifier
    # @param query The query to ask the Thea API
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiResponseFilingAnswers, Fixnum, Hash)>] ApiResponseFilingAnswers data, response status code and response headers
    def get_filing_answers_with_http_info(identifier, query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FilingApi.get_filing_answers ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling FilingApi.get_filing_answers"
      end
      # verify the required parameter 'query' is set
      if @api_client.config.client_side_validation && query.nil?
        fail ArgumentError, "Missing the required parameter 'query' when calling FilingApi.get_filing_answers"
      end
      # resource path
      local_var_path = "/filings/{identifier}/answers".sub('{' + 'identifier' + '}', identifier.to_s)

      # query parameters
      query_params = {}
      query_params[:'query'] = query

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ApiResponseFilingAnswers')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilingApi#get_filing_answers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Lookup Filing
    # Returns the Filing with the given `identifier`
    # @param id The Intrinio ID of the Filing
    # @param [Hash] opts the optional parameters
    # @return [Filing]
    def get_filing_by_id(id, opts = {})
      data, _status_code, _headers = get_filing_by_id_with_http_info(id, opts)
      return data
    end

    # Lookup Filing
    # Returns the Filing with the given &#x60;identifier&#x60;
    # @param id The Intrinio ID of the Filing
    # @param [Hash] opts the optional parameters
    # @return [Array<(Filing, Fixnum, Hash)>] Filing data, response status code and response headers
    def get_filing_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FilingApi.get_filing_by_id ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling FilingApi.get_filing_by_id"
      end
      # resource path
      local_var_path = "/filings/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Filing')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilingApi#get_filing_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # All Fundamentals by Filing
    # Returns a list of fundamentals with unique fundamental IDs associated with a particular `Intrinio Filing ID` (if applicable) that have been updated or created as a result of a company`s latest SEC filing. Useful to ensure your database is up to date with the latest fundamentals.
    # @param identifier A Filing identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :statement_code Filters fundamentals by statement code
    # @option opts [String] :type Filters fundamentals by type
    # @option opts [Integer] :fiscal_year Filters fundamentals by fiscal year
    # @option opts [String] :fiscal_period Filters fundamentals by fiscal period
    # @option opts [Date] :start_date Returns fundamentals on or after the given date
    # @option opts [Date] :end_date Returns fundamentals on or before the given date
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [ApiResponseFilingFundamentals]
    def get_filing_fundamentals(identifier, opts = {})
      data, _status_code, _headers = get_filing_fundamentals_with_http_info(identifier, opts)
      return data
    end

    # All Fundamentals by Filing
    # Returns a list of fundamentals with unique fundamental IDs associated with a particular &#x60;Intrinio Filing ID&#x60; (if applicable) that have been updated or created as a result of a company&#x60;s latest SEC filing. Useful to ensure your database is up to date with the latest fundamentals.
    # @param identifier A Filing identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :statement_code Filters fundamentals by statement code
    # @option opts [String] :type Filters fundamentals by type
    # @option opts [Integer] :fiscal_year Filters fundamentals by fiscal year
    # @option opts [String] :fiscal_period Filters fundamentals by fiscal period
    # @option opts [Date] :start_date Returns fundamentals on or after the given date
    # @option opts [Date] :end_date Returns fundamentals on or before the given date
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<(ApiResponseFilingFundamentals, Fixnum, Hash)>] ApiResponseFilingFundamentals data, response status code and response headers
    def get_filing_fundamentals_with_http_info(identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FilingApi.get_filing_fundamentals ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling FilingApi.get_filing_fundamentals"
      end
      if @api_client.config.client_side_validation && opts[:'statement_code'] && !['income_statement', 'balance_sheet_statement', 'cash_flow_statement', 'calculations'].include?(opts[:'statement_code'])
        fail ArgumentError, 'invalid value for "statement_code", must be one of income_statement, balance_sheet_statement, cash_flow_statement, calculations'
      end
      if @api_client.config.client_side_validation && opts[:'type'] && !['QTR', 'YTD', 'FY', 'TTM'].include?(opts[:'type'])
        fail ArgumentError, 'invalid value for "type", must be one of QTR, YTD, FY, TTM'
      end
      if @api_client.config.client_side_validation && opts[:'fiscal_period'] && !['FY', 'Q1', 'Q2', 'Q3', 'Q4', 'Q2YTD', 'Q3YTD', 'Q1TTM', 'Q2TTM', 'Q3TTM'].include?(opts[:'fiscal_period'])
        fail ArgumentError, 'invalid value for "fiscal_period", must be one of FY, Q1, Q2, Q3, Q4, Q2YTD, Q3YTD, Q1TTM, Q2TTM, Q3TTM'
      end
      # resource path
      local_var_path = "/filings/{identifier}/fundamentals".sub('{' + 'identifier' + '}', identifier.to_s)

      # query parameters
      query_params = {}
      query_params[:'statement_code'] = opts[:'statement_code'] if !opts[:'statement_code'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'fiscal_year'] = opts[:'fiscal_year'] if !opts[:'fiscal_year'].nil?
      query_params[:'fiscal_period'] = opts[:'fiscal_period'] if !opts[:'fiscal_period'].nil?
      query_params[:'start_date'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'end_date'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'next_page'] = opts[:'next_page'] if !opts[:'next_page'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ApiResponseFilingFundamentals')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilingApi#get_filing_fundamentals\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Filing Html
    # Returns a SEC filing in HTML Format for a specified filing ID.
    # @param identifier A Filing identifier
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_filing_html(identifier, opts = {})
      data, _status_code, _headers = get_filing_html_with_http_info(identifier, opts)
      return data
    end

    # Filing Html
    # Returns a SEC filing in HTML Format for a specified filing ID.
    # @param identifier A Filing identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def get_filing_html_with_http_info(identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FilingApi.get_filing_html ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling FilingApi.get_filing_html"
      end
      # resource path
      local_var_path = "/filings/{identifier}/html".sub('{' + 'identifier' + '}', identifier.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/html'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilingApi#get_filing_html\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Filing Text
    # 
    # @param identifier A Filing identifier
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_filing_text(identifier, opts = {})
      data, _status_code, _headers = get_filing_text_with_http_info(identifier, opts)
      return data
    end

    # Filing Text
    # 
    # @param identifier A Filing identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def get_filing_text_with_http_info(identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FilingApi.get_filing_text ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling FilingApi.get_filing_text"
      end
      # resource path
      local_var_path = "/filings/{identifier}/text".sub('{' + 'identifier' + '}', identifier.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain; charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilingApi#get_filing_text\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Filing Note by ID
    # Returns the XBRL filing note contents in HTML or text format for a specified Intrinio XBRL filing note ID.
    # @param identifier The Intrinio ID of the filing note
    # @param [Hash] opts the optional parameters
    # @option opts [String] :content_format Returns content in html (as filed) or plain text (default to text)
    # @return [FilingNote]
    def get_note(identifier, opts = {})
      data, _status_code, _headers = get_note_with_http_info(identifier, opts)
      return data
    end

    # Filing Note by ID
    # Returns the XBRL filing note contents in HTML or text format for a specified Intrinio XBRL filing note ID.
    # @param identifier The Intrinio ID of the filing note
    # @param [Hash] opts the optional parameters
    # @option opts [String] :content_format Returns content in html (as filed) or plain text
    # @return [Array<(FilingNote, Fixnum, Hash)>] FilingNote data, response status code and response headers
    def get_note_with_http_info(identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FilingApi.get_note ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling FilingApi.get_note"
      end
      if @api_client.config.client_side_validation && opts[:'content_format'] && !['text', 'html'].include?(opts[:'content_format'])
        fail ArgumentError, 'invalid value for "content_format", must be one of text, html'
      end
      # resource path
      local_var_path = "/filings/notes/{identifier}".sub('{' + 'identifier' + '}', identifier.to_s)

      # query parameters
      query_params = {}
      query_params[:'content_format'] = opts[:'content_format'] if !opts[:'content_format'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FilingNote')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilingApi#get_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Filing Note HTML
    # 
    # @param identifier The Intrinio ID of the filing note
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_note_html(identifier, opts = {})
      data, _status_code, _headers = get_note_html_with_http_info(identifier, opts)
      return data
    end

    # Filing Note HTML
    # 
    # @param identifier The Intrinio ID of the filing note
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def get_note_html_with_http_info(identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FilingApi.get_note_html ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling FilingApi.get_note_html"
      end
      # resource path
      local_var_path = "/filings/notes/{identifier}/html".sub('{' + 'identifier' + '}', identifier.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain; charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilingApi#get_note_html\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Filing Note Text
    # 
    # @param identifier The Intrinio ID of the filing note
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_note_text(identifier, opts = {})
      data, _status_code, _headers = get_note_text_with_http_info(identifier, opts)
      return data
    end

    # Filing Note Text
    # 
    # @param identifier The Intrinio ID of the filing note
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def get_note_text_with_http_info(identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FilingApi.get_note_text ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling FilingApi.get_note_text"
      end
      # resource path
      local_var_path = "/filings/notes/{identifier}/text".sub('{' + 'identifier' + '}', identifier.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain; charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilingApi#get_note_text\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search Filing Notes
    # Search the XBRL note database and return a list of XBRL note sections containing text from the text query parameter passed through.
    # @param query Search for notes that contain all or parts of this text
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :filing_start_date Limit search to filings on or after this date
    # @option opts [Date] :filing_end_date Limit search to filings on or before this date
    # @option opts [Integer] :page_size The number of results to return (default to 100)
    # @return [ApiResponseFilingNotesSearch]
    def search_notes(query, opts = {})
      data, _status_code, _headers = search_notes_with_http_info(query, opts)
      return data
    end

    # Search Filing Notes
    # Search the XBRL note database and return a list of XBRL note sections containing text from the text query parameter passed through.
    # @param query Search for notes that contain all or parts of this text
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :filing_start_date Limit search to filings on or after this date
    # @option opts [Date] :filing_end_date Limit search to filings on or before this date
    # @option opts [Integer] :page_size The number of results to return
    # @return [Array<(ApiResponseFilingNotesSearch, Fixnum, Hash)>] ApiResponseFilingNotesSearch data, response status code and response headers
    def search_notes_with_http_info(query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FilingApi.search_notes ..."
      end
      # verify the required parameter 'query' is set
      if @api_client.config.client_side_validation && query.nil?
        fail ArgumentError, "Missing the required parameter 'query' when calling FilingApi.search_notes"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 10000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling FilingApi.search_notes, must be smaller than or equal to 10000.'
      end

      # resource path
      local_var_path = "/filings/notes/search"

      # query parameters
      query_params = {}
      query_params[:'query'] = query
      query_params[:'filing_start_date'] = opts[:'filing_start_date'] if !opts[:'filing_start_date'].nil?
      query_params[:'filing_end_date'] = opts[:'filing_end_date'] if !opts[:'filing_end_date'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ApiResponseFilingNotesSearch')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilingApi#search_notes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
