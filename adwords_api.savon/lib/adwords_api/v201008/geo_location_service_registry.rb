#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.0 on 2011-07-19 18:49:49.

module AdwordsApi; module V201008; module GeoLocationService
  class GeoLocationServiceRegistry
    GEOLOCATIONSERVICE_METHODS = {:get=>{:input=>[{:type=>"GeoLocationSelector", :max_occurs=>1, :name=>:selector, :min_occurs=>0}], :output=>{:fields=>[{:type=>"GeoLocation", :max_occurs=>:unbounded, :name=>:rval, :min_occurs=>0}], :name=>"get_response"}}}
    GEOLOCATIONSERVICE_TYPES = {:GeoPoint=>{:fields=>[{:type=>"int", :max_occurs=>1, :name=>:latitude_in_micro_degrees, :min_occurs=>0}, {:type=>"int", :max_occurs=>1, :name=>:longitude_in_micro_degrees, :min_occurs=>0}]}, :Address=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:street_address, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:street_address2, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:city_name, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:province_code, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:province_name, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:postal_code, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:country_code, :min_occurs=>0}]}, :SoapHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:auth_token, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:client_customer_id, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:client_email, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:developer_token, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:user_agent, :min_occurs=>0}, {:type=>"boolean", :max_occurs=>1, :name=>:validate_only, :min_occurs=>0}, {:type=>"boolean", :max_occurs=>1, :name=>:partial_failure, :min_occurs=>0}]}, :GeoLocationSelector=>{:fields=>[{:type=>"Address", :max_occurs=>:unbounded, :name=>:addresses, :min_occurs=>0}]}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:request_id, :min_occurs=>0}, {:type=>"long", :max_occurs=>1, :name=>:operations, :min_occurs=>0}, {:type=>"long", :max_occurs=>1, :name=>:response_time, :min_occurs=>0}, {:type=>"long", :max_occurs=>1, :name=>:units, :min_occurs=>0}]}, :InvalidGeoLocation=>{:fields=>[], :base=>"GeoLocation"}, :GeoLocation=>{:fields=>[{:type=>"GeoPoint", :max_occurs=>1, :name=>:geo_point, :min_occurs=>0}, {:type=>"Address", :max_occurs=>1, :name=>:address, :min_occurs=>0}, {:type=>"base64Binary", :max_occurs=>1, :name=>:encoded_location, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:geo_location_type, :min_occurs=>0}]}}
    GEOLOCATIONSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return GEOLOCATIONSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return GEOLOCATIONSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return GEOLOCATIONSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < AdwordsApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault)
    end
  end
end; end; end