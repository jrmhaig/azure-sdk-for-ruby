# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_07_01
  module Models
    #
    # Represents a token restriction. Provided token must match these
    # requirements for successful license or key delivery.
    #
    class ContentKeyPolicyTokenRestriction < ContentKeyPolicyRestriction

      include MsRestAzure


      def initialize
        @odatatype = "#Microsoft.Media.ContentKeyPolicyTokenRestriction"
      end

      attr_accessor :odatatype

      # @return [String] The token issuer.
      attr_accessor :issuer

      # @return [String] The audience for the token.
      attr_accessor :audience

      # @return [ContentKeyPolicyRestrictionTokenKey] The primary verification
      # key.
      attr_accessor :primary_verification_key

      # @return [Array<ContentKeyPolicyRestrictionTokenKey>] A list of
      # alternative verification keys.
      attr_accessor :alternate_verification_keys

      # @return [Array<ContentKeyPolicyTokenClaim>] A list of required token
      # claims.
      attr_accessor :required_claims

      # @return [ContentKeyPolicyRestrictionTokenType] The type of token.
      # Possible values include: 'Unknown', 'Swt', 'Jwt'
      attr_accessor :restriction_token_type

      # @return [String] The OpenID connect discovery document.
      attr_accessor :open_id_connect_discovery_document


      #
      # Mapper for ContentKeyPolicyTokenRestriction class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: '#Microsoft.Media.ContentKeyPolicyTokenRestriction',
          type: {
            name: 'Composite',
            class_name: 'ContentKeyPolicyTokenRestriction',
            model_properties: {
              odatatype: {
                client_side_validation: true,
                required: true,
                serialized_name: '@odata\\.type',
                type: {
                  name: 'String'
                }
              },
              issuer: {
                client_side_validation: true,
                required: true,
                serialized_name: 'issuer',
                type: {
                  name: 'String'
                }
              },
              audience: {
                client_side_validation: true,
                required: true,
                serialized_name: 'audience',
                type: {
                  name: 'String'
                }
              },
              primary_verification_key: {
                client_side_validation: true,
                required: true,
                serialized_name: 'primaryVerificationKey',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: '@odata.type',
                  uber_parent: 'ContentKeyPolicyRestrictionTokenKey',
                  class_name: 'ContentKeyPolicyRestrictionTokenKey'
                }
              },
              alternate_verification_keys: {
                client_side_validation: true,
                required: false,
                serialized_name: 'alternateVerificationKeys',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ContentKeyPolicyRestrictionTokenKeyElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: '@odata.type',
                        uber_parent: 'ContentKeyPolicyRestrictionTokenKey',
                        class_name: 'ContentKeyPolicyRestrictionTokenKey'
                      }
                  }
                }
              },
              required_claims: {
                client_side_validation: true,
                required: false,
                serialized_name: 'requiredClaims',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ContentKeyPolicyTokenClaimElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ContentKeyPolicyTokenClaim'
                      }
                  }
                }
              },
              restriction_token_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'restrictionTokenType',
                type: {
                  name: 'Enum',
                  module: 'ContentKeyPolicyRestrictionTokenType'
                }
              },
              open_id_connect_discovery_document: {
                client_side_validation: true,
                required: false,
                serialized_name: 'openIdConnectDiscoveryDocument',
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