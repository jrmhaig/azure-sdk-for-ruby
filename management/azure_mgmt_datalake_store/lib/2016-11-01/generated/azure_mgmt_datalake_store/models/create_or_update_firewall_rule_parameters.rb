# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataLakeStore::Mgmt::V2016_11_01
  module Models
    #
    # The parameters used to create a new firewall rule.
    #
    class CreateOrUpdateFirewallRuleParameters

      include MsRestAzure

      # @return [String] The start IP address for the firewall rule. This can
      # be either ipv4 or ipv6. Start and End should be in the same protocol.
      attr_accessor :start_ip_address

      # @return [String] The end IP address for the firewall rule. This can be
      # either ipv4 or ipv6. Start and End should be in the same protocol.
      attr_accessor :end_ip_address


      #
      # Mapper for CreateOrUpdateFirewallRuleParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CreateOrUpdateFirewallRuleParameters',
          type: {
            name: 'Composite',
            class_name: 'CreateOrUpdateFirewallRuleParameters',
            model_properties: {
              start_ip_address: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.startIpAddress',
                type: {
                  name: 'String'
                }
              },
              end_ip_address: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.endIpAddress',
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