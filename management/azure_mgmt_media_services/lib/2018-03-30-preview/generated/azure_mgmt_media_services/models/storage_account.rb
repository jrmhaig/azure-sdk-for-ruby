# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_03_30_preview
  module Models
    #
    # The storage account details.
    #
    class StorageAccount

      include MsRestAzure

      # @return [String] The ID of the storage account resource. Media Services
      # relies on tables and queues as well as blobs, so the primary storage
      # account must be a Standard Storage account (either
      # Microsoft.ClassicStorage or Microsoft.Storage). Blob only storage
      # accounts can be added as secondary storage accounts.
      attr_accessor :id

      # @return [StorageAccountType] The type of the storage account. Possible
      # values include: 'Primary', 'Secondary'
      attr_accessor :type


      #
      # Mapper for StorageAccount class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'StorageAccount',
          type: {
            name: 'Composite',
            class_name: 'StorageAccount',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'Enum',
                  module: 'StorageAccountType'
                }
              }
            }
          }
        }
      end
    end
  end
end
