# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_07_01
  module Models
    #
    # Information about an error.
    #
    class ODataError

      include MsRestAzure

      # @return [String] A language-independent error name.
      attr_accessor :code

      # @return [String] The error message.
      attr_accessor :message

      # @return [String] The target of the error (for example, the name of the
      # property in error).
      attr_accessor :target

      # @return [Array<ODataError>] The error details.
      attr_accessor :details


      #
      # Mapper for ODataError class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ODataError',
          type: {
            name: 'Composite',
            class_name: 'ODataError',
            model_properties: {
              code: {
                required: false,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: false,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              target: {
                required: false,
                serialized_name: 'target',
                type: {
                  name: 'String'
                }
              },
              details: {
                required: false,
                serialized_name: 'details',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ODataErrorElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ODataError'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
