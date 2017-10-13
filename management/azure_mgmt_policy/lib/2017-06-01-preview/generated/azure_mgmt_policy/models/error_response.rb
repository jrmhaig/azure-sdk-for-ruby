# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Policy::Mgmt::V2017_06_01_preview
  module Models
    #
    # Error reponse indicates ARM is not able to process the incoming request.
    # The reason is provided in the error message.
    #
    class ErrorResponse

      include MsRestAzure

      # @return [String] Http status code.
      attr_accessor :http_status

      # @return [String] Error code.
      attr_accessor :error_code

      # @return [String] Error message indicating why the operation failed.
      attr_accessor :error_message


      #
      # Mapper for ErrorResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ErrorResponse',
          type: {
            name: 'Composite',
            class_name: 'ErrorResponse',
            model_properties: {
              http_status: {
                required: false,
                serialized_name: 'httpStatus',
                type: {
                  name: 'String'
                }
              },
              error_code: {
                required: false,
                serialized_name: 'errorCode',
                type: {
                  name: 'String'
                }
              },
              error_message: {
                required: false,
                serialized_name: 'errorMessage',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end