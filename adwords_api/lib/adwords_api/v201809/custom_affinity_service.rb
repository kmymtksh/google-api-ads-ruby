# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2018, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.1 on 2018-09-20 09:47:16.

require 'ads_common/savon_service'
require 'adwords_api/v201809/custom_affinity_service_registry'

module AdwordsApi; module V201809; module CustomAffinityService
  class CustomAffinityService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://adwords.google.com/api/adwords/rm/v201809'
      super(config, endpoint, namespace, :v201809)
    end

    def get(*args, &block)
      return execute_action('get', args, &block)
    end

    def get_to_xml(*args)
      return get_soap_xml('get', args)
    end

    def mutate(*args, &block)
      return execute_action('mutate', args, &block)
    end

    def mutate_to_xml(*args)
      return get_soap_xml('mutate', args)
    end

    def mutate_token(*args, &block)
      return execute_action('mutate_token', args, &block)
    end

    def mutate_token_to_xml(*args)
      return get_soap_xml('mutate_token', args)
    end

    def query(*args, &block)
      return execute_action('query', args, &block)
    end

    def query_to_xml(*args)
      return get_soap_xml('query', args)
    end

    private

    def get_service_registry()
      return CustomAffinityServiceRegistry
    end

    def get_module()
      return AdwordsApi::V201809::CustomAffinityService
    end
  end
end; end; end