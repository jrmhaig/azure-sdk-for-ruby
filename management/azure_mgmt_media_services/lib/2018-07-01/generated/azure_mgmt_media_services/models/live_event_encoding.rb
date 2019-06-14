# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_07_01
  module Models
    #
    # The Live Event encoding.
    #
    class LiveEventEncoding

      include MsRestAzure

      # @return [LiveEventEncodingType] The encoding type for Live Event.  This
      # value is specified at creation time and cannot be updated. Possible
      # values include: 'None', 'Basic', 'Standard', 'Premium1080p'
      attr_accessor :encoding_type

      # @return [String] The encoding preset name.  This value is specified at
      # creation time and cannot be updated.
      attr_accessor :preset_name


      #
      # Mapper for LiveEventEncoding class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'LiveEventEncoding',
          type: {
            name: 'Composite',
            class_name: 'LiveEventEncoding',
            model_properties: {
              encoding_type: {
                required: false,
                serialized_name: 'encodingType',
                type: {
                  name: 'String'
                }
              },
              preset_name: {
                required: false,
                serialized_name: 'presetName',
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
