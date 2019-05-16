# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2015_04_08
  module Models
    #
    # The configuration of the partition key to be used for partitioning data
    # into multiple partitions
    #
    class ContainerPartitionKey

      include MsRestAzure

      # @return [Array<String>] List of paths using which data within the
      # container can be partitioned
      attr_accessor :paths

      # @return [PartitionKind] Indicates the kind of algorithm used for
      # partitioning. Possible values include: 'Hash', 'Range'. Default value:
      # 'Hash' .
      attr_accessor :kind


      #
      # Mapper for ContainerPartitionKey class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContainerPartitionKey',
          type: {
            name: 'Composite',
            class_name: 'ContainerPartitionKey',
            model_properties: {
              paths: {
                client_side_validation: true,
                required: false,
                serialized_name: 'paths',
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
              },
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
                default_value: 'Hash',
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
