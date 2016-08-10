# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DataLakeAnalytics::Catalog
  module Models
    #
    # A Data Lake Analytics DDL name item.
    #
    class DdlName

      include MsRestAzure

      # @return [String] the name of the table associated with this database
      # and schema.
      attr_accessor :first_part

      # @return [String] the name of the table associated with this database
      # and schema.
      attr_accessor :second_part

      # @return [String] the name of the table associated with this database
      # and schema.
      attr_accessor :third_part

      # @return [String] the name of the table associated with this database
      # and schema.
      attr_accessor :server


      #
      # Mapper for DdlName class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DdlName',
          type: {
            name: 'Composite',
            class_name: 'DdlName',
            model_properties: {
              first_part: {
                required: false,
                serialized_name: 'firstPart',
                type: {
                  name: 'String'
                }
              },
              second_part: {
                required: false,
                serialized_name: 'secondPart',
                type: {
                  name: 'String'
                }
              },
              third_part: {
                required: false,
                serialized_name: 'thirdPart',
                type: {
                  name: 'String'
                }
              },
              server: {
                required: false,
                serialized_name: 'server',
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