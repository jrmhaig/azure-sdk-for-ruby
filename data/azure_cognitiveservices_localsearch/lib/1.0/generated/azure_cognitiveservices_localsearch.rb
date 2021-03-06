# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '1.0/generated/azure_cognitiveservices_localsearch/module_definition'
require 'ms_rest_azure'

module Azure::CognitiveServices::LocalSearch::V1_0
  autoload :Local,                                              '1.0/generated/azure_cognitiveservices_localsearch/local.rb'
  autoload :LocalSearchClient,                                  '1.0/generated/azure_cognitiveservices_localsearch/local_search_client.rb'

  module Models
    autoload :ResponseBase,                                       '1.0/generated/azure_cognitiveservices_localsearch/models/response_base.rb'
    autoload :GeoCoordinates,                                     '1.0/generated/azure_cognitiveservices_localsearch/models/geo_coordinates.rb'
    autoload :EntitiesEntityPresentationInfo,                     '1.0/generated/azure_cognitiveservices_localsearch/models/entities_entity_presentation_info.rb'
    autoload :QueryContext,                                       '1.0/generated/azure_cognitiveservices_localsearch/models/query_context.rb'
    autoload :Error,                                              '1.0/generated/azure_cognitiveservices_localsearch/models/error.rb'
    autoload :SearchResultsAnswer,                                '1.0/generated/azure_cognitiveservices_localsearch/models/search_results_answer.rb'
    autoload :Places,                                             '1.0/generated/azure_cognitiveservices_localsearch/models/places.rb'
    autoload :PostalAddress,                                      '1.0/generated/azure_cognitiveservices_localsearch/models/postal_address.rb'
    autoload :Place,                                              '1.0/generated/azure_cognitiveservices_localsearch/models/place.rb'
    autoload :Action,                                             '1.0/generated/azure_cognitiveservices_localsearch/models/action.rb'
    autoload :Identifiable,                                       '1.0/generated/azure_cognitiveservices_localsearch/models/identifiable.rb'
    autoload :Response,                                           '1.0/generated/azure_cognitiveservices_localsearch/models/response.rb'
    autoload :Thing,                                              '1.0/generated/azure_cognitiveservices_localsearch/models/thing.rb'
    autoload :SearchResponse,                                     '1.0/generated/azure_cognitiveservices_localsearch/models/search_response.rb'
    autoload :Answer,                                             '1.0/generated/azure_cognitiveservices_localsearch/models/answer.rb'
    autoload :ErrorResponse,                                      '1.0/generated/azure_cognitiveservices_localsearch/models/error_response.rb'
    autoload :CreativeWork,                                       '1.0/generated/azure_cognitiveservices_localsearch/models/creative_work.rb'
    autoload :Intangible,                                         '1.0/generated/azure_cognitiveservices_localsearch/models/intangible.rb'
    autoload :SearchAction,                                       '1.0/generated/azure_cognitiveservices_localsearch/models/search_action.rb'
    autoload :StructuredValue,                                    '1.0/generated/azure_cognitiveservices_localsearch/models/structured_value.rb'
    autoload :EntityScenario,                                     '1.0/generated/azure_cognitiveservices_localsearch/models/entity_scenario.rb'
    autoload :EntityType,                                         '1.0/generated/azure_cognitiveservices_localsearch/models/entity_type.rb'
    autoload :ErrorCode,                                          '1.0/generated/azure_cognitiveservices_localsearch/models/error_code.rb'
    autoload :ErrorSubCode,                                       '1.0/generated/azure_cognitiveservices_localsearch/models/error_sub_code.rb'
    autoload :ResponseFormat,                                     '1.0/generated/azure_cognitiveservices_localsearch/models/response_format.rb'
    autoload :SafeSearch,                                         '1.0/generated/azure_cognitiveservices_localsearch/models/safe_search.rb'
  end
end
