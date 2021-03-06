# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataBox::Mgmt::V2018_01_01
  module Models
    #
    # Preferences related to the order
    #
    class Preferences

      include MsRestAzure

      # @return [Array<String>]
      attr_accessor :preferred_data_center_region


      #
      # Mapper for Preferences class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Preferences',
          type: {
            name: 'Composite',
            class_name: 'Preferences',
            model_properties: {
              preferred_data_center_region: {
                client_side_validation: true,
                required: false,
                serialized_name: 'preferredDataCenterRegion',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
