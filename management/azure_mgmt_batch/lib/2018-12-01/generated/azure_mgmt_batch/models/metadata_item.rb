# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2018_12_01
  module Models
    #
    # A name-value pair associated with a Batch service resource.

    # The Batch service does not assign any meaning to this metadata; it is
    # solely for the use of user code.
    #
    class MetadataItem

      include MsRestAzure

      # @return [String] The name of the metadata item.
      attr_accessor :name

      # @return [String] The value of the metadata item.
      attr_accessor :value


      #
      # Mapper for MetadataItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MetadataItem',
          type: {
            name: 'Composite',
            class_name: 'MetadataItem',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'value',
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
