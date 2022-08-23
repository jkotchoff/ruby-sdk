=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://docs.intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.29.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'date'

module Intrinio

  class ESGComprehensiveRating
    # Indicates the date on which the ESG Rating was calculated.
    attr_accessor :date

    # The average ESG rating of all companies in a particular country in which the company is a peer of.
    attr_accessor :country_average_rating

    # The average ESG rating of all companies in a particular industry in which the company is a peer of.
    attr_accessor :industry_average_rating

    # The company's overall aggregated ESG rating, taking into account its ESG scoring from the Community, Employee, Enviroment, and Governance categories.
    attr_accessor :overall_rating

    # The Community Category reflects a companys citizenship, charitable giving, and volunteerism. This category covers the company's human rights record and treatment of its supply chain. It also covers the environmental and social impacts of the companys products and services, and the development of sustainable products, processes and technologies.
    attr_accessor :community_rating

    # The Employees category includes disclosure of policies, programs, and performance in diversity, labor relations and labor rights. The evaluation focuses on the quality of policies and programs, compliance with national laws and regulations, and proactive management initiatives. The category includes evaluation of inclusive diversity policies, fair treatment of all employees, robust diversity (EEO-1) programs and training.
    attr_accessor :employee_rating

    # The Environment category data covers a company's interactions with the environment at large, including use of natural resources. The category evaluates corporate environmental performance, compliance with environmental regulations, and mitigation of environmental footprint. It also includes leadership in addressing climate change through appropriate policies and strategies.
    attr_accessor :environment_rating

    # Corporate governance refers to leadership structure and the values that determine corporate direction, ethics and performance. The Governance category covers disclosure of policies and procedures, board independence and diversity, executive compensation, attention to stakeholder concerns, and evaluation of a company's culture of ethical leadership and compliance.
    attr_accessor :governance_rating

    # The Human Rights and Supply Chain subcategory measures a company's commitment to respecting fundamental human rights conventions. This subcategory covers a company's transparency in overseas sourcing disclosure and monitoring. The subcategory also covers the relationship with and respect for the human rights of indigenous peoples near its proposed or current operations.
    attr_accessor :human_rights_and_supply_chain_rating

    # The Community Development and Philanthropy subcategory covers the relationship between a company and the communities within which it is embedded. It reflects a company's community citizenship through charitable giving, donations of goods, and volunteerism of staff time. It also includes protecting public health (e.g., avoidance of industrial accidents) and managing the social impacts of its operations.
    attr_accessor :community_dev_and_philanthropy_rating

    # The Product subcategory covers the responsibility of a company for the development, design, and management of its products and services. This subcategory reflects a company's capacity to reduce environmental costs, create new market opportunities, and produce or market goods and services that enhance the health and quality of life for consumers.
    attr_accessor :product_rating

    # The Compensation and Benefits subcategory covers a company's capacity to increase its workforce loyalty and productivity. It includes benefits that engage employees and improve worker development. This subcategory also focuses on long-term employment growth and stability by promotion practices, lay-off practices, and relations with retired employees.
    attr_accessor :compensation_and_benefits_rating

    # The Diversity and Labor Rights subcategory covers workplace policies and practices covering fair and non-discriminatory treatment of employees. It covers a company's labor-management relations and participation by employees. Fundamental labor rights include freedom of association and protection of the right to organize.
    attr_accessor :diversity_and_labor_rights_rating

    # The Training, Safety and Health subcategory measures a company's effectiveness in providing a healthy and safe workplace. It includes programs to support the health, well-being and productivity of all employees. This subcategory includes workplace policies and programs that boost employee morale, workplace productivity and worker development.
    attr_accessor :training_health_and_safety_rating

    # The Energy and Climate Change subcategory measures a company's effectiveness in addressing climate change through appropriate policies and strategies. The subcategory includes energy use, emissions to air of CO2 and other Greenhouse Gas Emissions (GHG) and other alternative environmental technologies.
    attr_accessor :energy_climate_change_rating

    # The Environmental Policy and Reporting subcategory includes a company's policies and intention to reduce the environmental impact of a company. The data includes the company's environmental reporting performance, adherence to environmental reporting standards and compliance with investor, regulatory and stakeholders' requests for transparency. Compliance data consists of breaches of regulatory limits and accidental releases.
    attr_accessor :environment_policy_and_reporting_rating

    # The Resource Management subcategory covers how efficiently resources are used in manufacturing and delivering products and services. It includes a company's capacity to reduce the use of materials, energy or water, and to find more efficient solutions by improving its supply chain management. This subcategory includes environmental performance relative to production size.
    attr_accessor :resource_management_rating

    # The Board subcategory covers a company's effectiveness in following best practices in corporate governance principles related to board membership. It includes how the company provides competitive and proportionate management compensation and its ability to incent executives and board members to achieve both financial and extra-financial targets.
    attr_accessor :board_rating

    # The Leadership Ethics subcategory measures how a company manages its relationships with its various stakeholders, including investors, customers, communities, and regulators. It measures a company's commitment and effectiveness toward the vision of integrating social and environmental aspects into the overall core strategy. It also measures whether sustainability principles are integrated from the top down into the day-to-day operations of the company.
    attr_accessor :leadership_ethics_rating

    # The Transparency and Reporting subcategory rates factors including are corporate policies and practices aligned with sustainability goals. It also covers whether the company is a signatory of Global Compact and other leading global entities. It evaluates the assurance (3rd party audit) of the accuracy, completeness, and reliability of its Sustainability or Corporate Social Responsibility reports.
    attr_accessor :transparency_reporting_rating

    # The percentile rank of the company's ESG rating in comparison to it's country peers.
    attr_accessor :country_percentile_rank

    # The percentile rank of the company's ESG rating in comparison to it's industry peers.
    attr_accessor :industry_percentile_rank

    # The percentile rank of the company's overall ESG rating in comparison to all companies within the CSRHub ESG universe.
    attr_accessor :overall_percentile_rank

    # The percentile rank of the company's Community rating in comparison to all companies within the CSRHub ESG universe.
    attr_accessor :community_percentile_rank

    # The percentile rank of the company's Employee rating in comparison to all companies within the CSRHub ESG universe.
    attr_accessor :employee_percentile_rank

    # The percentile rank of the company's Environment rating in comparison to all companies within the CSRHub ESG universe.
    attr_accessor :environment_percentile_rank

    # The percentile rank of the company's Governance rating in comparison to all companies within the CSRHub ESG universe.
    attr_accessor :governance_percentile_rank

    # The percentile rank of the company's Human Rights and Supply Chain rating in comparison to all companies within the CSRHub ESG universe.
    attr_accessor :human_rights_and_supply_chain_percentile_rank

    # The percentile rank of the company's Community, Dev, and Philanthropy rating in comparison to all companies within the CSRHub ESG universe.
    attr_accessor :community_dev_and_philanthropy_percentile_rank

    # The percentile rank of the company's Product rating in comparison to all companies within the CSRHub ESG universe.
    attr_accessor :product_percentile_rank

    # The percentile rank of the company's Compensation and Benefits rating in comparison to all companies within the CSRHub ESG universe.
    attr_accessor :compensation_and_benefits_percentile_rank

    # The percentile rank of the company's Diversity and Labor Rights rating in comparison to all companies within the CSRHub ESG universe.
    attr_accessor :diversity_and_labor_rights_percentile_rank

    # The percentile rank of the company's Training, Health, and Safety rating in comparison to all companies within the CSRHub ESG universe.
    attr_accessor :training_health_and_safety_percentile_rank

    # The percentile rank of the company's Energy Climate Change rating in comparison to all companies within the CSRHub ESG universe.
    attr_accessor :energy_climate_change_percentile_rank

    # The percentile rank of the company's Environment Policy and Reporting rating in comparison to all companies within the CSRHub ESG universe.
    attr_accessor :environment_policy_and_reporting_percentile_rank

    # The percentile rank of the company's Resource Management rating in comparison to all companies within the CSRHub ESG universe.
    attr_accessor :resource_management_percentile_rank

    # The percentile rank of the company's Board rating in comparison to all companies within the CSRHub ESG universe.
    attr_accessor :board_percentile_rank

    # The percentile rank of the company's Leadership Ethics rating in comparison to all companies within the CSRHub ESG universe.
    attr_accessor :leadership_ethics_percentile_rank

    # The percentile rank of the company's Transaperency Reporting rating in comparison to all companies within the CSRHub ESG universe.
    attr_accessor :transparency_reporting_percentile_rank


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'date' => :'date',
        :'country_average_rating' => :'country_average_rating',
        :'industry_average_rating' => :'industry_average_rating',
        :'overall_rating' => :'overall_rating',
        :'community_rating' => :'community_rating',
        :'employee_rating' => :'employee_rating',
        :'environment_rating' => :'environment_rating',
        :'governance_rating' => :'governance_rating',
        :'human_rights_and_supply_chain_rating' => :'human_rights_and_supply_chain_rating',
        :'community_dev_and_philanthropy_rating' => :'community_dev_and_philanthropy_rating',
        :'product_rating' => :'product_rating',
        :'compensation_and_benefits_rating' => :'compensation_and_benefits_rating',
        :'diversity_and_labor_rights_rating' => :'diversity_and_labor_rights_rating',
        :'training_health_and_safety_rating' => :'training_health_and_safety_rating',
        :'energy_climate_change_rating' => :'energy_climate_change_rating',
        :'environment_policy_and_reporting_rating' => :'environment_policy_and_reporting_rating',
        :'resource_management_rating' => :'resource_management_rating',
        :'board_rating' => :'board_rating',
        :'leadership_ethics_rating' => :'leadership_ethics_rating',
        :'transparency_reporting_rating' => :'transparency_reporting_rating',
        :'country_percentile_rank' => :'country_percentile_rank',
        :'industry_percentile_rank' => :'industry_percentile_rank',
        :'overall_percentile_rank' => :'overall_percentile_rank',
        :'community_percentile_rank' => :'community_percentile_rank',
        :'employee_percentile_rank' => :'employee_percentile_rank',
        :'environment_percentile_rank' => :'environment_percentile_rank',
        :'governance_percentile_rank' => :'governance_percentile_rank',
        :'human_rights_and_supply_chain_percentile_rank' => :'human_rights_and_supply_chain_percentile_rank',
        :'community_dev_and_philanthropy_percentile_rank' => :'community_dev_and_philanthropy_percentile_rank',
        :'product_percentile_rank' => :'product_percentile_rank',
        :'compensation_and_benefits_percentile_rank' => :'compensation_and_benefits_percentile_rank',
        :'diversity_and_labor_rights_percentile_rank' => :'diversity_and_labor_rights_percentile_rank',
        :'training_health_and_safety_percentile_rank' => :'training_health_and_safety_percentile_rank',
        :'energy_climate_change_percentile_rank' => :'energy_climate_change_percentile_rank',
        :'environment_policy_and_reporting_percentile_rank' => :'environment_policy_and_reporting_percentile_rank',
        :'resource_management_percentile_rank' => :'resource_management_percentile_rank',
        :'board_percentile_rank' => :'board_percentile_rank',
        :'leadership_ethics_percentile_rank' => :'leadership_ethics_percentile_rank',
        :'transparency_reporting_percentile_rank' => :'transparency_reporting_percentile_rank'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'date' => :'Date',
        :'country_average_rating' => :'Float',
        :'industry_average_rating' => :'Float',
        :'overall_rating' => :'Float',
        :'community_rating' => :'Float',
        :'employee_rating' => :'Float',
        :'environment_rating' => :'Float',
        :'governance_rating' => :'Float',
        :'human_rights_and_supply_chain_rating' => :'Float',
        :'community_dev_and_philanthropy_rating' => :'Float',
        :'product_rating' => :'Float',
        :'compensation_and_benefits_rating' => :'Float',
        :'diversity_and_labor_rights_rating' => :'Float',
        :'training_health_and_safety_rating' => :'Float',
        :'energy_climate_change_rating' => :'Float',
        :'environment_policy_and_reporting_rating' => :'Float',
        :'resource_management_rating' => :'Float',
        :'board_rating' => :'Float',
        :'leadership_ethics_rating' => :'Float',
        :'transparency_reporting_rating' => :'Float',
        :'country_percentile_rank' => :'Float',
        :'industry_percentile_rank' => :'Float',
        :'overall_percentile_rank' => :'Float',
        :'community_percentile_rank' => :'Float',
        :'employee_percentile_rank' => :'Float',
        :'environment_percentile_rank' => :'Float',
        :'governance_percentile_rank' => :'Float',
        :'human_rights_and_supply_chain_percentile_rank' => :'Float',
        :'community_dev_and_philanthropy_percentile_rank' => :'Float',
        :'product_percentile_rank' => :'Float',
        :'compensation_and_benefits_percentile_rank' => :'Float',
        :'diversity_and_labor_rights_percentile_rank' => :'Float',
        :'training_health_and_safety_percentile_rank' => :'Float',
        :'energy_climate_change_percentile_rank' => :'Float',
        :'environment_policy_and_reporting_percentile_rank' => :'Float',
        :'resource_management_percentile_rank' => :'Float',
        :'board_percentile_rank' => :'Float',
        :'leadership_ethics_percentile_rank' => :'Float',
        :'transparency_reporting_percentile_rank' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.has_key?(:'country_average_rating')
        self.country_average_rating = attributes[:'country_average_rating']
      end

      if attributes.has_key?(:'industry_average_rating')
        self.industry_average_rating = attributes[:'industry_average_rating']
      end

      if attributes.has_key?(:'overall_rating')
        self.overall_rating = attributes[:'overall_rating']
      end

      if attributes.has_key?(:'community_rating')
        self.community_rating = attributes[:'community_rating']
      end

      if attributes.has_key?(:'employee_rating')
        self.employee_rating = attributes[:'employee_rating']
      end

      if attributes.has_key?(:'environment_rating')
        self.environment_rating = attributes[:'environment_rating']
      end

      if attributes.has_key?(:'governance_rating')
        self.governance_rating = attributes[:'governance_rating']
      end

      if attributes.has_key?(:'human_rights_and_supply_chain_rating')
        self.human_rights_and_supply_chain_rating = attributes[:'human_rights_and_supply_chain_rating']
      end

      if attributes.has_key?(:'community_dev_and_philanthropy_rating')
        self.community_dev_and_philanthropy_rating = attributes[:'community_dev_and_philanthropy_rating']
      end

      if attributes.has_key?(:'product_rating')
        self.product_rating = attributes[:'product_rating']
      end

      if attributes.has_key?(:'compensation_and_benefits_rating')
        self.compensation_and_benefits_rating = attributes[:'compensation_and_benefits_rating']
      end

      if attributes.has_key?(:'diversity_and_labor_rights_rating')
        self.diversity_and_labor_rights_rating = attributes[:'diversity_and_labor_rights_rating']
      end

      if attributes.has_key?(:'training_health_and_safety_rating')
        self.training_health_and_safety_rating = attributes[:'training_health_and_safety_rating']
      end

      if attributes.has_key?(:'energy_climate_change_rating')
        self.energy_climate_change_rating = attributes[:'energy_climate_change_rating']
      end

      if attributes.has_key?(:'environment_policy_and_reporting_rating')
        self.environment_policy_and_reporting_rating = attributes[:'environment_policy_and_reporting_rating']
      end

      if attributes.has_key?(:'resource_management_rating')
        self.resource_management_rating = attributes[:'resource_management_rating']
      end

      if attributes.has_key?(:'board_rating')
        self.board_rating = attributes[:'board_rating']
      end

      if attributes.has_key?(:'leadership_ethics_rating')
        self.leadership_ethics_rating = attributes[:'leadership_ethics_rating']
      end

      if attributes.has_key?(:'transparency_reporting_rating')
        self.transparency_reporting_rating = attributes[:'transparency_reporting_rating']
      end

      if attributes.has_key?(:'country_percentile_rank')
        self.country_percentile_rank = attributes[:'country_percentile_rank']
      end

      if attributes.has_key?(:'industry_percentile_rank')
        self.industry_percentile_rank = attributes[:'industry_percentile_rank']
      end

      if attributes.has_key?(:'overall_percentile_rank')
        self.overall_percentile_rank = attributes[:'overall_percentile_rank']
      end

      if attributes.has_key?(:'community_percentile_rank')
        self.community_percentile_rank = attributes[:'community_percentile_rank']
      end

      if attributes.has_key?(:'employee_percentile_rank')
        self.employee_percentile_rank = attributes[:'employee_percentile_rank']
      end

      if attributes.has_key?(:'environment_percentile_rank')
        self.environment_percentile_rank = attributes[:'environment_percentile_rank']
      end

      if attributes.has_key?(:'governance_percentile_rank')
        self.governance_percentile_rank = attributes[:'governance_percentile_rank']
      end

      if attributes.has_key?(:'human_rights_and_supply_chain_percentile_rank')
        self.human_rights_and_supply_chain_percentile_rank = attributes[:'human_rights_and_supply_chain_percentile_rank']
      end

      if attributes.has_key?(:'community_dev_and_philanthropy_percentile_rank')
        self.community_dev_and_philanthropy_percentile_rank = attributes[:'community_dev_and_philanthropy_percentile_rank']
      end

      if attributes.has_key?(:'product_percentile_rank')
        self.product_percentile_rank = attributes[:'product_percentile_rank']
      end

      if attributes.has_key?(:'compensation_and_benefits_percentile_rank')
        self.compensation_and_benefits_percentile_rank = attributes[:'compensation_and_benefits_percentile_rank']
      end

      if attributes.has_key?(:'diversity_and_labor_rights_percentile_rank')
        self.diversity_and_labor_rights_percentile_rank = attributes[:'diversity_and_labor_rights_percentile_rank']
      end

      if attributes.has_key?(:'training_health_and_safety_percentile_rank')
        self.training_health_and_safety_percentile_rank = attributes[:'training_health_and_safety_percentile_rank']
      end

      if attributes.has_key?(:'energy_climate_change_percentile_rank')
        self.energy_climate_change_percentile_rank = attributes[:'energy_climate_change_percentile_rank']
      end

      if attributes.has_key?(:'environment_policy_and_reporting_percentile_rank')
        self.environment_policy_and_reporting_percentile_rank = attributes[:'environment_policy_and_reporting_percentile_rank']
      end

      if attributes.has_key?(:'resource_management_percentile_rank')
        self.resource_management_percentile_rank = attributes[:'resource_management_percentile_rank']
      end

      if attributes.has_key?(:'board_percentile_rank')
        self.board_percentile_rank = attributes[:'board_percentile_rank']
      end

      if attributes.has_key?(:'leadership_ethics_percentile_rank')
        self.leadership_ethics_percentile_rank = attributes[:'leadership_ethics_percentile_rank']
      end

      if attributes.has_key?(:'transparency_reporting_percentile_rank')
        self.transparency_reporting_percentile_rank = attributes[:'transparency_reporting_percentile_rank']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          date == o.date &&
          country_average_rating == o.country_average_rating &&
          industry_average_rating == o.industry_average_rating &&
          overall_rating == o.overall_rating &&
          community_rating == o.community_rating &&
          employee_rating == o.employee_rating &&
          environment_rating == o.environment_rating &&
          governance_rating == o.governance_rating &&
          human_rights_and_supply_chain_rating == o.human_rights_and_supply_chain_rating &&
          community_dev_and_philanthropy_rating == o.community_dev_and_philanthropy_rating &&
          product_rating == o.product_rating &&
          compensation_and_benefits_rating == o.compensation_and_benefits_rating &&
          diversity_and_labor_rights_rating == o.diversity_and_labor_rights_rating &&
          training_health_and_safety_rating == o.training_health_and_safety_rating &&
          energy_climate_change_rating == o.energy_climate_change_rating &&
          environment_policy_and_reporting_rating == o.environment_policy_and_reporting_rating &&
          resource_management_rating == o.resource_management_rating &&
          board_rating == o.board_rating &&
          leadership_ethics_rating == o.leadership_ethics_rating &&
          transparency_reporting_rating == o.transparency_reporting_rating &&
          country_percentile_rank == o.country_percentile_rank &&
          industry_percentile_rank == o.industry_percentile_rank &&
          overall_percentile_rank == o.overall_percentile_rank &&
          community_percentile_rank == o.community_percentile_rank &&
          employee_percentile_rank == o.employee_percentile_rank &&
          environment_percentile_rank == o.environment_percentile_rank &&
          governance_percentile_rank == o.governance_percentile_rank &&
          human_rights_and_supply_chain_percentile_rank == o.human_rights_and_supply_chain_percentile_rank &&
          community_dev_and_philanthropy_percentile_rank == o.community_dev_and_philanthropy_percentile_rank &&
          product_percentile_rank == o.product_percentile_rank &&
          compensation_and_benefits_percentile_rank == o.compensation_and_benefits_percentile_rank &&
          diversity_and_labor_rights_percentile_rank == o.diversity_and_labor_rights_percentile_rank &&
          training_health_and_safety_percentile_rank == o.training_health_and_safety_percentile_rank &&
          energy_climate_change_percentile_rank == o.energy_climate_change_percentile_rank &&
          environment_policy_and_reporting_percentile_rank == o.environment_policy_and_reporting_percentile_rank &&
          resource_management_percentile_rank == o.resource_management_percentile_rank &&
          board_percentile_rank == o.board_percentile_rank &&
          leadership_ethics_percentile_rank == o.leadership_ethics_percentile_rank &&
          transparency_reporting_percentile_rank == o.transparency_reporting_percentile_rank
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [date, country_average_rating, industry_average_rating, overall_rating, community_rating, employee_rating, environment_rating, governance_rating, human_rights_and_supply_chain_rating, community_dev_and_philanthropy_rating, product_rating, compensation_and_benefits_rating, diversity_and_labor_rights_rating, training_health_and_safety_rating, energy_climate_change_rating, environment_policy_and_reporting_rating, resource_management_rating, board_rating, leadership_ethics_rating, transparency_reporting_rating, country_percentile_rank, industry_percentile_rank, overall_percentile_rank, community_percentile_rank, employee_percentile_rank, environment_percentile_rank, governance_percentile_rank, human_rights_and_supply_chain_percentile_rank, community_dev_and_philanthropy_percentile_rank, product_percentile_rank, compensation_and_benefits_percentile_rank, diversity_and_labor_rights_percentile_rank, training_health_and_safety_percentile_rank, energy_climate_change_percentile_rank, environment_policy_and_reporting_percentile_rank, resource_management_percentile_rank, board_percentile_rank, leadership_ethics_percentile_rank, transparency_reporting_percentile_rank].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = Intrinio.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
