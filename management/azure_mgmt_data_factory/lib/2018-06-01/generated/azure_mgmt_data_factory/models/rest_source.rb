# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # A copy activity Rest service source.
    #
    class RestSource < CopySource

      include MsRestAzure


      def initialize
        @type = "RestSource"
      end

      attr_accessor :type

      # @return The HTTP method used to call the RESTful API. The default is
      # GET. Type: string (or Expression with resultType string).
      attr_accessor :request_method

      # @return The HTTP request body to the RESTful API if requestMethod is
      # POST. Type: string (or Expression with resultType string).
      attr_accessor :request_body

      # @return The additional HTTP headers in the request to the RESTful API.
      # Type: string (or Expression with resultType string).
      attr_accessor :additional_headers

      # @return The pagination rules to compose next page requests. Type:
      # string (or Expression with resultType string).
      attr_accessor :pagination_rules

      # @return The timeout (TimeSpan) to get an HTTP response. It is the
      # timeout to get a response, not the timeout to read response data.
      # Default value: 00:01:40. Type: string (or Expression with resultType
      # string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
      attr_accessor :http_request_timeout

      # @return The time to await before sending next page request.
      attr_accessor :request_interval


      #
      # Mapper for RestSource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RestSource',
          type: {
            name: 'Composite',
            class_name: 'RestSource',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              source_retry_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceRetryCount',
                type: {
                  name: 'Object'
                }
              },
              source_retry_wait: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceRetryWait',
                type: {
                  name: 'Object'
                }
              },
              max_concurrent_connections: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxConcurrentConnections',
                type: {
                  name: 'Object'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              request_method: {
                client_side_validation: true,
                required: false,
                serialized_name: 'requestMethod',
                type: {
                  name: 'Object'
                }
              },
              request_body: {
                client_side_validation: true,
                required: false,
                serialized_name: 'requestBody',
                type: {
                  name: 'Object'
                }
              },
              additional_headers: {
                client_side_validation: true,
                required: false,
                serialized_name: 'additionalHeaders',
                type: {
                  name: 'Object'
                }
              },
              pagination_rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'paginationRules',
                type: {
                  name: 'Object'
                }
              },
              http_request_timeout: {
                client_side_validation: true,
                required: false,
                serialized_name: 'httpRequestTimeout',
                type: {
                  name: 'Object'
                }
              },
              request_interval: {
                client_side_validation: true,
                required: false,
                serialized_name: 'requestInterval',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
