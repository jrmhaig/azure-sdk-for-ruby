# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2017_05_01_preview
  module Models
    #
    # The diagnostic setting resource.
    #
    class DiagnosticSettingsResource < ProxyOnlyResource

      include MsRestAzure

      # @return [String] The resource ID of the storage account to which you
      # would like to send Diagnostic Logs.
      attr_accessor :storage_account_id

      # @return [String] The service bus rule Id of the diagnostic setting.
      # This is here to maintain backwards compatibility.
      attr_accessor :service_bus_rule_id

      # @return [String] The resource Id for the event hub authorization rule.
      attr_accessor :event_hub_authorization_rule_id

      # @return [String] The name of the event hub. If none is specified, the
      # default event hub will be selected.
      attr_accessor :event_hub_name

      # @return [Array<MetricSettings>] The list of metric settings.
      attr_accessor :metrics

      # @return [Array<LogSettings>] The list of logs settings.
      attr_accessor :logs

      # @return [String] The full ARM resource ID of the Log Analytics
      # workspace to which you would like to send Diagnostic Logs. Example:
      # /subscriptions/4b9e8510-67ab-4e9a-95a9-e2f1e570ea9c/resourceGroups/insights-integration/providers/Microsoft.OperationalInsights/workspaces/viruela2
      attr_accessor :workspace_id

      # @return [String] A string indicating whether the export to Log
      # Analytics should use the default destination type, i.e.
      # AzureDiagnostics, or use a destination type constructed as follows:
      # <normalized service identity>_<normalized category name>. Possible
      # values are: Dedicated and null (null is default.)
      attr_accessor :log_analytics_destination_type


      #
      # Mapper for DiagnosticSettingsResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DiagnosticSettingsResource',
          type: {
            name: 'Composite',
            class_name: 'DiagnosticSettingsResource',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              storage_account_id: {
                required: false,
                serialized_name: 'properties.storageAccountId',
                type: {
                  name: 'String'
                }
              },
              service_bus_rule_id: {
                required: false,
                serialized_name: 'properties.serviceBusRuleId',
                type: {
                  name: 'String'
                }
              },
              event_hub_authorization_rule_id: {
                required: false,
                serialized_name: 'properties.eventHubAuthorizationRuleId',
                type: {
                  name: 'String'
                }
              },
              event_hub_name: {
                required: false,
                serialized_name: 'properties.eventHubName',
                type: {
                  name: 'String'
                }
              },
              metrics: {
                required: false,
                serialized_name: 'properties.metrics',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'MetricSettingsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MetricSettings'
                      }
                  }
                }
              },
              logs: {
                required: false,
                serialized_name: 'properties.logs',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'LogSettingsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'LogSettings'
                      }
                  }
                }
              },
              workspace_id: {
                required: false,
                serialized_name: 'properties.workspaceId',
                type: {
                  name: 'String'
                }
              },
              log_analytics_destination_type: {
                required: false,
                serialized_name: 'properties.logAnalyticsDestinationType',
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
