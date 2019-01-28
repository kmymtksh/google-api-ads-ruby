# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2018, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.1 on 2018-08-02 14:04:23.

require 'ads_common/savon_service'
require 'ad_manager_api/v201808/forecast_service_registry'

module AdManagerApi; module V201808; module ForecastService
  class ForecastService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201808'
      super(config, endpoint, namespace, :v201808)
    end

    def get_availability_forecast(*args, &block)
      return execute_action('get_availability_forecast', args, &block)
    end

    def get_availability_forecast_to_xml(*args)
      return get_soap_xml('get_availability_forecast', args)
    end

    def get_availability_forecast_by_id(*args, &block)
      return execute_action('get_availability_forecast_by_id', args, &block)
    end

    def get_availability_forecast_by_id_to_xml(*args)
      return get_soap_xml('get_availability_forecast_by_id', args)
    end

    def get_delivery_forecast(*args, &block)
      return execute_action('get_delivery_forecast', args, &block)
    end

    def get_delivery_forecast_to_xml(*args)
      return get_soap_xml('get_delivery_forecast', args)
    end

    def get_delivery_forecast_by_ids(*args, &block)
      return execute_action('get_delivery_forecast_by_ids', args, &block)
    end

    def get_delivery_forecast_by_ids_to_xml(*args)
      return get_soap_xml('get_delivery_forecast_by_ids', args)
    end

    private

    def get_service_registry()
      return ForecastServiceRegistry
    end

    def get_module()
      return AdManagerApi::V201808::ForecastService
    end
  end
end; end; end