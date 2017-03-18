# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # Application gateway resource
    #
    class ApplicationGateway < MsRestAzure::Resource

      include MsRestAzure

      # @return [ApplicationGatewaySku] SKU of the application gateway
      # resource.
      attr_accessor :sku

      # @return [ApplicationGatewaySslPolicy] SSL policy of the application
      # gateway resource.
      attr_accessor :ssl_policy

      # @return [ApplicationGatewayOperationalState] Operational state of the
      # application gateway resource. Possible values are: 'Stopped',
      # 'Started', 'Running', and 'Stopping'. Possible values include:
      # 'Stopped', 'Starting', 'Running', 'Stopping'
      attr_accessor :operational_state

      # @return [Array<ApplicationGatewayIPConfiguration>] Subnets of
      # application the gateway resource.
      attr_accessor :gateway_ipconfigurations

      # @return [Array<ApplicationGatewayAuthenticationCertificate>]
      # Authentication certificates of the application gateway resource.
      attr_accessor :authentication_certificates

      # @return [Array<ApplicationGatewaySslCertificate>] SSL certificates of
      # the application gateway resource.
      attr_accessor :ssl_certificates

      # @return [Array<ApplicationGatewayFrontendIPConfiguration>] Frontend IP
      # addresses of the application gateway resource.
      attr_accessor :frontend_ipconfigurations

      # @return [Array<ApplicationGatewayFrontendPort>] Frontend ports of the
      # application gateway resource.
      attr_accessor :frontend_ports

      # @return [Array<ApplicationGatewayProbe>] Probes of the application
      # gateway resource.
      attr_accessor :probes

      # @return [Array<ApplicationGatewayBackendAddressPool>] Backend address
      # pool of the application gateway resource.
      attr_accessor :backend_address_pools

      # @return [Array<ApplicationGatewayBackendHttpSettings>] Backend http
      # settings of the application gateway resource.
      attr_accessor :backend_http_settings_collection

      # @return [Array<ApplicationGatewayHttpListener>] Http listeners of the
      # application gateway resource.
      attr_accessor :http_listeners

      # @return [Array<ApplicationGatewayUrlPathMap>] URL path map of the
      # application gateway resource.
      attr_accessor :url_path_maps

      # @return [Array<ApplicationGatewayRequestRoutingRule>] Request routing
      # rules of the application gateway resource.
      attr_accessor :request_routing_rules

      # @return [ApplicationGatewayWebApplicationFirewallConfiguration] Web
      # application firewall configuration.
      attr_accessor :web_application_firewall_configuration

      # @return [String] Resource GUID property of the application gateway
      # resource.
      attr_accessor :resource_guid

      # @return [String] Provisioning state of the application gateway
      # resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
      attr_accessor :provisioning_state

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for ApplicationGateway class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApplicationGateway',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGateway',
            model_properties: {
              id: {
                required: false,
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
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              sku: {
                required: false,
                serialized_name: 'properties.sku',
                type: {
                  name: 'Composite',
                  class_name: 'ApplicationGatewaySku'
                }
              },
              ssl_policy: {
                required: false,
                serialized_name: 'properties.sslPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'ApplicationGatewaySslPolicy'
                }
              },
              operational_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.operationalState',
                type: {
                  name: 'String'
                }
              },
              gateway_ipconfigurations: {
                required: false,
                serialized_name: 'properties.gatewayIPConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ApplicationGatewayIPConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayIPConfiguration'
                      }
                  }
                }
              },
              authentication_certificates: {
                required: false,
                serialized_name: 'properties.authenticationCertificates',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ApplicationGatewayAuthenticationCertificateElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayAuthenticationCertificate'
                      }
                  }
                }
              },
              ssl_certificates: {
                required: false,
                serialized_name: 'properties.sslCertificates',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ApplicationGatewaySslCertificateElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewaySslCertificate'
                      }
                  }
                }
              },
              frontend_ipconfigurations: {
                required: false,
                serialized_name: 'properties.frontendIPConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ApplicationGatewayFrontendIPConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayFrontendIPConfiguration'
                      }
                  }
                }
              },
              frontend_ports: {
                required: false,
                serialized_name: 'properties.frontendPorts',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ApplicationGatewayFrontendPortElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayFrontendPort'
                      }
                  }
                }
              },
              probes: {
                required: false,
                serialized_name: 'properties.probes',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ApplicationGatewayProbeElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayProbe'
                      }
                  }
                }
              },
              backend_address_pools: {
                required: false,
                serialized_name: 'properties.backendAddressPools',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ApplicationGatewayBackendAddressPoolElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayBackendAddressPool'
                      }
                  }
                }
              },
              backend_http_settings_collection: {
                required: false,
                serialized_name: 'properties.backendHttpSettingsCollection',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ApplicationGatewayBackendHttpSettingsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayBackendHttpSettings'
                      }
                  }
                }
              },
              http_listeners: {
                required: false,
                serialized_name: 'properties.httpListeners',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ApplicationGatewayHttpListenerElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayHttpListener'
                      }
                  }
                }
              },
              url_path_maps: {
                required: false,
                serialized_name: 'properties.urlPathMaps',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ApplicationGatewayUrlPathMapElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayUrlPathMap'
                      }
                  }
                }
              },
              request_routing_rules: {
                required: false,
                serialized_name: 'properties.requestRoutingRules',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ApplicationGatewayRequestRoutingRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayRequestRoutingRule'
                      }
                  }
                }
              },
              web_application_firewall_configuration: {
                required: false,
                serialized_name: 'properties.webApplicationFirewallConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'ApplicationGatewayWebApplicationFirewallConfiguration'
                }
              },
              resource_guid: {
                required: false,
                serialized_name: 'properties.resourceGuid',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              etag: {
                required: false,
                serialized_name: 'etag',
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
