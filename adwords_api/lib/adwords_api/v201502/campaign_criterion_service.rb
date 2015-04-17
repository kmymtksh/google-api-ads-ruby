# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.9.8 on 2015-03-12 10:31:07.

require 'ads_common/savon_service'
require 'adwords_api/v201502/campaign_criterion_service_registry'

module AdwordsApi; module V201502; module CampaignCriterionService
  class CampaignCriterionService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://adwords.google.com/api/adwords/cm/v201502'
      super(config, endpoint, namespace, :v201502)
    end

    def get(*args, &block)
      return execute_action('get', args, &block)
    end

    def mutate(*args, &block)
      return execute_action('mutate', args, &block)
    end

    def query(*args, &block)
      return execute_action('query', args, &block)
    end

    private

    def get_service_registry()
      return CampaignCriterionServiceRegistry
    end

    def get_module()
      return AdwordsApi::V201502::CampaignCriterionService
    end
  end
end; end; end
