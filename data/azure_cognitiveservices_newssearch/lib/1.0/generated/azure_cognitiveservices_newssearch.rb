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
require '1.0/generated/azure_cognitiveservices_newssearch/module_definition'
require 'ms_rest_azure'

module Azure::CognitiveServices::NewsSearch::V1_0
  autoload :NewsOperations,                                     '1.0/generated/azure_cognitiveservices_newssearch/news_operations.rb'
  autoload :NewsSearchClient,                                   '1.0/generated/azure_cognitiveservices_newssearch/news_search_client.rb'

  module Models
    autoload :ResponseBase,                                       '1.0/generated/azure_cognitiveservices_newssearch/models/response_base.rb'
    autoload :Error,                                              '1.0/generated/azure_cognitiveservices_newssearch/models/error.rb'
    autoload :Query,                                              '1.0/generated/azure_cognitiveservices_newssearch/models/query.rb'
    autoload :NewsArticle,                                        '1.0/generated/azure_cognitiveservices_newssearch/models/news_article.rb'
    autoload :SearchResultsAnswer,                                '1.0/generated/azure_cognitiveservices_newssearch/models/search_results_answer.rb'
    autoload :News,                                               '1.0/generated/azure_cognitiveservices_newssearch/models/news.rb'
    autoload :ImageObject,                                        '1.0/generated/azure_cognitiveservices_newssearch/models/image_object.rb'
    autoload :NewsTopic,                                          '1.0/generated/azure_cognitiveservices_newssearch/models/news_topic.rb'
    autoload :Article,                                            '1.0/generated/azure_cognitiveservices_newssearch/models/article.rb'
    autoload :Identifiable,                                       '1.0/generated/azure_cognitiveservices_newssearch/models/identifiable.rb'
    autoload :Response,                                           '1.0/generated/azure_cognitiveservices_newssearch/models/response.rb'
    autoload :Answer,                                             '1.0/generated/azure_cognitiveservices_newssearch/models/answer.rb'
    autoload :Thing,                                              '1.0/generated/azure_cognitiveservices_newssearch/models/thing.rb'
    autoload :TrendingTopics,                                     '1.0/generated/azure_cognitiveservices_newssearch/models/trending_topics.rb'
    autoload :MediaObject,                                        '1.0/generated/azure_cognitiveservices_newssearch/models/media_object.rb'
    autoload :VideoObject,                                        '1.0/generated/azure_cognitiveservices_newssearch/models/video_object.rb'
    autoload :CreativeWork,                                       '1.0/generated/azure_cognitiveservices_newssearch/models/creative_work.rb'
    autoload :Organization,                                       '1.0/generated/azure_cognitiveservices_newssearch/models/organization.rb'
    autoload :ErrorResponse,                                      '1.0/generated/azure_cognitiveservices_newssearch/models/error_response.rb'
    autoload :ErrorCode,                                          '1.0/generated/azure_cognitiveservices_newssearch/models/error_code.rb'
    autoload :ErrorSubCode,                                       '1.0/generated/azure_cognitiveservices_newssearch/models/error_sub_code.rb'
    autoload :Freshness,                                          '1.0/generated/azure_cognitiveservices_newssearch/models/freshness.rb'
    autoload :SafeSearch,                                         '1.0/generated/azure_cognitiveservices_newssearch/models/safe_search.rb'
    autoload :TextFormat,                                         '1.0/generated/azure_cognitiveservices_newssearch/models/text_format.rb'
  end
end
