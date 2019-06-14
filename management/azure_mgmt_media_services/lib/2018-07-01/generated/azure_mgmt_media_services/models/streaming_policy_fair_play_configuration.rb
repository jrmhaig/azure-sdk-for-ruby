# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_07_01
  module Models
    #
    # Class to specify configurations of FairPlay in Streaming Policy
    #
    class StreamingPolicyFairPlayConfiguration

      include MsRestAzure

      # @return [String] Template for the URL of the custom service delivering
      # licenses to end user players.  Not required when using Azure Media
      # Services for issuing licenses.  The template supports replaceable
      # tokens that the service will update at runtime with the value specific
      # to the request.  The currently supported token values are
      # {AlternativeMediaId}, which is replaced with the value of
      # StreamingLocatorId.AlternativeMediaId, and {ContentKeyId}, which is
      # replaced with the value of identifier of the key being requested.
      attr_accessor :custom_license_acquisition_url_template

      # @return [Boolean] All license to be persistent or not
      attr_accessor :allow_persistent_license


      #
      # Mapper for StreamingPolicyFairPlayConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'StreamingPolicyFairPlayConfiguration',
          type: {
            name: 'Composite',
            class_name: 'StreamingPolicyFairPlayConfiguration',
            model_properties: {
              custom_license_acquisition_url_template: {
                required: false,
                serialized_name: 'customLicenseAcquisitionUrlTemplate',
                type: {
                  name: 'String'
                }
              },
              allow_persistent_license: {
                required: true,
                serialized_name: 'allowPersistentLicense',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
