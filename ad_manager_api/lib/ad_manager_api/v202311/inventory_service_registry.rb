# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2023, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.3 on 2023-11-03 13:26:53.

require 'ad_manager_api/errors'

module AdManagerApi; module V202311; module InventoryService
  class InventoryServiceRegistry
    INVENTORYSERVICE_METHODS = {:create_ad_units=>{:input=>[{:name=>:ad_units, :type=>"AdUnit", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"create_ad_units_response", :fields=>[{:name=>:rval, :type=>"AdUnit", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :get_ad_unit_sizes_by_statement=>{:input=>[{:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_ad_unit_sizes_by_statement_response", :fields=>[{:name=>:rval, :type=>"AdUnitSize", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :get_ad_units_by_statement=>{:input=>[{:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_ad_units_by_statement_response", :fields=>[{:name=>:rval, :type=>"AdUnitPage", :min_occurs=>0, :max_occurs=>1}]}}, :perform_ad_unit_action=>{:input=>[{:name=>:ad_unit_action, :type=>"AdUnitAction", :min_occurs=>0, :max_occurs=>1}, {:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"perform_ad_unit_action_response", :fields=>[{:name=>:rval, :type=>"UpdateResult", :min_occurs=>0, :max_occurs=>1}]}}, :update_ad_units=>{:input=>[{:name=>:ad_units, :type=>"AdUnit", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"update_ad_units_response", :fields=>[{:name=>:rval, :type=>"AdUnit", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    INVENTORYSERVICE_TYPES = {:ObjectValue=>{:fields=>[], :abstract=>true, :base=>"Value"}, :ActivateAdUnits=>{:fields=>[], :base=>"AdUnitAction"}, :AdSenseAccountError=>{:fields=>[{:name=>:reason, :type=>"AdSenseAccountError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AdSenseSettings=>{:fields=>[{:name=>:ad_sense_enabled, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:border_color, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:title_color, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:background_color, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:text_color, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:url_color, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_type, :type=>"AdSenseSettings.AdType", :min_occurs=>0, :max_occurs=>1}, {:name=>:border_style, :type=>"AdSenseSettings.BorderStyle", :min_occurs=>0, :max_occurs=>1}, {:name=>:font_family, :type=>"AdSenseSettings.FontFamily", :min_occurs=>0, :max_occurs=>1}, {:name=>:font_size, :type=>"AdSenseSettings.FontSize", :min_occurs=>0, :max_occurs=>1}]}, :AdUnitAction=>{:fields=>[], :abstract=>true}, :AdUnitCodeError=>{:fields=>[{:name=>:reason, :type=>"AdUnitCodeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AdUnit=>{:fields=>[{:name=>:id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:parent_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:has_children, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:parent_path, :type=>"AdUnitParent", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:description, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:target_window, :type=>"AdUnit.TargetWindow", :min_occurs=>0, :max_occurs=>1}, {:name=>:status, :type=>"InventoryStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_unit_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_unit_sizes, :type=>"AdUnitSize", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:is_interstitial, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_native, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_fluid, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:explicitly_targeted, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_sense_settings, :type=>"AdSenseSettings", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_sense_settings_source, :type=>"ValueSourceType", :min_occurs=>0, :max_occurs=>1}, {:name=>:applied_label_frequency_caps, :type=>"LabelFrequencyCap", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:effective_label_frequency_caps, :type=>"LabelFrequencyCap", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:applied_labels, :type=>"AppliedLabel", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:effective_applied_labels, :type=>"AppliedLabel", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:effective_team_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:applied_team_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:last_modified_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:smart_size_mode, :type=>"SmartSizeMode", :min_occurs=>0, :max_occurs=>1}, {:name=>:refresh_rate, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:external_set_top_box_channel_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_set_top_box_enabled, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :AdUnitHierarchyError=>{:fields=>[{:name=>:reason, :type=>"AdUnitHierarchyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AdUnitPage=>{:fields=>[{:name=>:total_result_set_size, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:results, :type=>"AdUnit", :min_occurs=>0, :max_occurs=>:unbounded}]}, :AdUnitParent=>{:fields=>[{:name=>:id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_unit_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:field_path_elements, :type=>"FieldPathElement", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException"}, :ApiVersionError=>{:fields=>[{:name=>:reason, :type=>"ApiVersionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :AppliedLabel=>{:fields=>[{:name=>:label_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_negated, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :ArchiveAdUnits=>{:fields=>[], :base=>"AdUnitAction"}, :AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :BooleanValue=>{:fields=>[{:name=>:value, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :CollectionSizeError=>{:fields=>[{:name=>:reason, :type=>"CollectionSizeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CommonError=>{:fields=>[{:name=>:reason, :type=>"CommonError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CompanyError=>{:fields=>[{:name=>:reason, :type=>"CompanyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CreativeWrapperError=>{:fields=>[{:name=>:reason, :type=>"CreativeWrapperError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CrossSellError=>{:fields=>[{:name=>:reason, :type=>"CrossSellError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Date=>{:fields=>[{:name=>:year, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:month, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:day, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :DateTime=>{:fields=>[{:name=>:date, :type=>"Date", :min_occurs=>0, :max_occurs=>1}, {:name=>:hour, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:minute, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:second, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_zone_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DateTimeValue=>{:fields=>[{:name=>:value, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :DateValue=>{:fields=>[{:name=>:value, :type=>"Date", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :DeactivateAdUnits=>{:fields=>[], :base=>"AdUnitAction"}, :EntityChildrenLimitReachedError=>{:fields=>[{:name=>:reason, :type=>"EntityChildrenLimitReachedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :EntityLimitReachedError=>{:fields=>[{:name=>:reason, :type=>"EntityLimitReachedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FeatureError=>{:fields=>[{:name=>:reason, :type=>"FeatureError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FieldPathElement=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:index, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :FrequencyCap=>{:fields=>[{:name=>:max_impressions, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:num_time_units, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_unit, :type=>"TimeUnit", :min_occurs=>0, :max_occurs=>1}]}, :FrequencyCapError=>{:fields=>[{:name=>:reason, :type=>"FrequencyCapError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InvalidColorError=>{:fields=>[{:name=>:reason, :type=>"InvalidColorError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InvalidUrlError=>{:fields=>[{:name=>:reason, :type=>"InvalidUrlError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InventoryUnitError=>{:fields=>[{:name=>:reason, :type=>"InventoryUnitError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InventoryUnitRefreshRateError=>{:fields=>[{:name=>:reason, :type=>"InventoryUnitRefreshRateError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AdUnitSize=>{:fields=>[{:name=>:size, :type=>"Size", :min_occurs=>0, :max_occurs=>1}, {:name=>:environment_type, :type=>"EnvironmentType", :min_occurs=>0, :max_occurs=>1}, {:name=>:companions, :type=>"AdUnitSize", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:full_display_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_audio, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :InventoryUnitSizesError=>{:fields=>[{:name=>:reason, :type=>"InventoryUnitSizesError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LabelEntityAssociationError=>{:fields=>[{:name=>:reason, :type=>"LabelEntityAssociationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LabelFrequencyCap=>{:fields=>[{:name=>:frequency_cap, :type=>"FrequencyCap", :min_occurs=>0, :max_occurs=>1}, {:name=>:label_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :NotNullError=>{:fields=>[{:name=>:reason, :type=>"NotNullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NullError=>{:fields=>[{:name=>:reason, :type=>"NullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NumberValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :ParseError=>{:fields=>[{:name=>:reason, :type=>"ParseError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PermissionError=>{:fields=>[{:name=>:reason, :type=>"PermissionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PublisherQueryLanguageContextError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageContextError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PublisherQueryLanguageSyntaxError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageSyntaxError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :QuotaError=>{:fields=>[{:name=>:reason, :type=>"QuotaError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RangeError=>{:fields=>[{:name=>:reason, :type=>"RangeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RegExError=>{:fields=>[{:name=>:reason, :type=>"RegExError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredCollectionError=>{:fields=>[{:name=>:reason, :type=>"RequiredCollectionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredNumberError=>{:fields=>[{:name=>:reason, :type=>"RequiredNumberError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ServerError=>{:fields=>[{:name=>:reason, :type=>"ServerError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SetValue=>{:fields=>[{:name=>:values, :type=>"Value", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Value"}, :Size=>{:fields=>[{:name=>:width, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:height, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_aspect_ratio, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :SoapRequestHeader=>{:fields=>[{:name=>:network_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :Statement=>{:fields=>[{:name=>:query, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}]}, :StatementError=>{:fields=>[{:name=>:reason, :type=>"StatementError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :StringFormatError=>{:fields=>[{:name=>:reason, :type=>"StringFormatError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :StringLengthError=>{:fields=>[{:name=>:reason, :type=>"StringLengthError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :String_ValueMapEntry=>{:fields=>[{:name=>:key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"Value", :min_occurs=>0, :max_occurs=>1}]}, :TeamError=>{:fields=>[{:name=>:reason, :type=>"TeamError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :TextValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :TypeError=>{:fields=>[], :base=>"ApiError"}, :UniqueError=>{:fields=>[], :base=>"ApiError"}, :UpdateResult=>{:fields=>[{:name=>:num_changes, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :Value=>{:fields=>[], :abstract=>true}, :"AdSenseAccountError.Reason"=>{:type=>"string", :enumerations=>["ASSOCIATE_ACCOUNT_API_ERROR", "GET_AD_SLOT_API_ERROR", "GET_CHANNEL_API_ERROR", "GET_BULK_ACCOUNT_STATUSES_API_ERROR", "RESEND_VERIFICATION_EMAIL_ERROR", "UNEXPECTED_API_RESPONSE_ERROR", "UNKNOWN"]}, :"AdSenseSettings.AdType"=>{:type=>"string", :enumerations=>["TEXT", "IMAGE", "TEXT_AND_IMAGE"]}, :"AdSenseSettings.BorderStyle"=>{:type=>"string", :enumerations=>["DEFAULT", "NOT_ROUNDED", "SLIGHTLY_ROUNDED", "VERY_ROUNDED"]}, :"AdSenseSettings.FontFamily"=>{:type=>"string", :enumerations=>["DEFAULT", "ARIAL", "TAHOMA", "GEORGIA", "TIMES", "VERDANA"]}, :"AdSenseSettings.FontSize"=>{:type=>"string", :enumerations=>["DEFAULT", "SMALL", "MEDIUM", "LARGE"]}, :"AdUnitCodeError.Reason"=>{:type=>"string", :enumerations=>["INVALID_CHARACTERS", "INVALID_CHARACTERS_WHEN_UTF_CHARACTERS_ARE_ALLOWED", "INVALID_CHARACTERS_FOR_LEGACY_AD_EXCHANGE_TAG", "LEADING_FORWARD_SLASH", "RESERVED_CODE", "UNKNOWN"]}, :"AdUnit.TargetWindow"=>{:type=>"string", :enumerations=>["TOP", "BLANK"]}, :"AdUnitHierarchyError.Reason"=>{:type=>"string", :enumerations=>["INVALID_DEPTH", "INVALID_PARENT", "UNKNOWN"]}, :"ApiVersionError.Reason"=>{:type=>"string", :enumerations=>["UPDATE_TO_NEWER_VERSION", "UNKNOWN"]}, :"AuthenticationError.Reason"=>{:type=>"string", :enumerations=>["AMBIGUOUS_SOAP_REQUEST_HEADER", "INVALID_EMAIL", "AUTHENTICATION_FAILED", "INVALID_OAUTH_SIGNATURE", "INVALID_SERVICE", "MISSING_SOAP_REQUEST_HEADER", "MISSING_AUTHENTICATION_HTTP_HEADER", "MISSING_AUTHENTICATION", "NETWORK_API_ACCESS_DISABLED", "NO_NETWORKS_TO_ACCESS", "NETWORK_NOT_FOUND", "NETWORK_CODE_REQUIRED", "CONNECTION_ERROR", "GOOGLE_ACCOUNT_ALREADY_ASSOCIATED_WITH_NETWORK", "UNDER_INVESTIGATION", "UNKNOWN"]}, :"CollectionSizeError.Reason"=>{:type=>"string", :enumerations=>["TOO_LARGE", "UNKNOWN"]}, :"CommonError.Reason"=>{:type=>"string", :enumerations=>["NOT_FOUND", "ALREADY_EXISTS", "NOT_APPLICABLE", "DUPLICATE_OBJECT", "CANNOT_UPDATE", "UNSUPPORTED_OPERATION", "CONCURRENT_MODIFICATION", "UNKNOWN"]}, :"CompanyError.Reason"=>{:type=>"string", :enumerations=>["CANNOT_SET_THIRD_PARTY_COMPANY_DUE_TO_TYPE", "CANNOT_UPDATE_COMPANY_TYPE", "INVALID_COMPANY_TYPE", "PRIMARY_CONTACT_DOES_NOT_BELONG_TO_THIS_COMPANY", "THIRD_PARTY_STATS_PROVIDER_IS_WRONG_ROLE_TYPE", "INVALID_LABEL_ASSOCIATION", "INVALID_COMPANY_TYPE_FOR_DEFAULT_BILLING_SETTING", "INVALID_DEFAULT_BILLING_SETTING", "COMPANY_HAS_ACTIVE_SHARE_ASSIGNMENTS", "UNKNOWN"]}, :"CreativeWrapperError.Reason"=>{:type=>"string", :enumerations=>["LABEL_ALREADY_ASSOCIATED_WITH_CREATIVE_WRAPPER", "INVALID_LABEL_TYPE", "UNRECOGNIZED_MACRO", "NEITHER_HEADER_NOR_FOOTER_SPECIFIED", "NEITHER_HEADER_NOR_FOOTER_NOR_VIDEO_TRACKING_URLS_SPECIFIED", "CANNOT_USE_CREATIVE_WRAPPER_TYPE", "CANNOT_UPDATE_LABEL_ID", "CANNOT_APPLY_TO_AD_UNIT_WITH_VIDEO_SIZES", "CANNOT_APPLY_TO_AD_UNIT_WITHOUT_VIDEO_SIZES", "CANNOT_APPLY_TO_AD_UNIT_WITHOUT_LABEL_ASSOCIATION", "CANNOT_APPLY_TO_MOBILE_AD_UNIT", "UNKNOWN"]}, :"CrossSellError.Reason"=>{:type=>"string", :enumerations=>["COMPANY_IS_NOT_DISTRIBUTION_PARTNER", "CHANGING_PARTNER_NETWORK_IS_NOT_SUPPORTED", "MISSING_DISTRIBUTOR_PARTNER_NAME", "DISTRIBUTOR_NETWORK_MISSING_PUBLISHER_FEATURE", "CONTENT_PROVIDER_NETWORK_MISSING_PUBLISHER_FEATURE", "INVALID_DISTRIBUTOR_PARTNER_NAME", "INVALID_CONTENT_PROVIDER_NETWORK", "CONTENT_PROVIDER_NETWORK_CANNOT_BE_ACTIVE_NETWORK", "CONTENT_PROVIDER_NETWORK_ALREADY_ENABLED_FOR_CROSS_SELLING", "DISTRIBUTOR_RULE_VIOLATION_ERROR", "DISTRIBUTOR_RULE_VIOLATION_WARNING", "UNKNOWN"]}, :"EntityChildrenLimitReachedError.Reason"=>{:type=>"string", :enumerations=>["LINE_ITEM_LIMIT_FOR_ORDER_REACHED", "CREATIVE_ASSOCIATION_LIMIT_FOR_LINE_ITEM_REACHED", "AD_UNIT_LIMIT_FOR_PLACEMENT_REACHED", "TARGETING_EXPRESSION_LIMIT_FOR_LINE_ITEM_REACHED", "TARGETING_EXPRESSION_SIZE_LIMIT_REACHED", "CUSTOM_TARGETING_VALUES_FOR_KEY_LIMIT_REACHED", "TARGETING_EXPRESSION_LIMIT_FOR_CREATIVES_ON_LINE_ITEM_REACHED", "ATTACHMENT_LIMIT_FOR_PROPOSAL_REACHED", "PROPOSAL_LINE_ITEM_LIMIT_FOR_PROPOSAL_REACHED", "PRODUCT_LIMIT_FOR_PRODUCT_PACKAGE_REACHED", "PRODUCT_TEMPLATE_AND_PRODUCT_BASE_RATE_LIMIT_FOR_RATE_CARD_REACHED", "PRODUCT_PACKAGE_ITEM_BASE_RATE_LIMIT_FOR_RATE_CARD_REACHED", "PREMIUM_LIMIT_FOR_RATE_CARD_REACHED", "AD_UNIT_LIMIT_FOR_AD_EXCLUSION_RULE_TARGETING_REACHED", "NATIVE_STYLE_LIMIT_FOR_NATIVE_AD_FORMAT_REACHED", "TARGETING_EXPRESSION_LIMIT_FOR_PRESENTATION_ASSIGNMENT_REACHED", "UNKNOWN"]}, :"EntityLimitReachedError.Reason"=>{:type=>"string", :enumerations=>["CUSTOM_TARGETING_VALUES_LIMIT_REACHED", "AD_EXCLUSION_RULES_LIMIT_REACHED", "FIRST_PARTY_AUDIENCE_SEGMENTS_LIMIT_REACHED", "PLACEMENTS_LIMIT_REACHED", "LINE_ITEMS_LIMIT_REACHED", "ACTIVE_LINE_ITEMS_LIMIT_REACHED", "DAI_ENCODING_PROFILES_LIMIT_REACHED", "TRAFFIC_FORECAST_SEGMENTS_LIMIT_REACHED", "FORECAST_ADJUSTMENTS_LIMIT_REACHED", "ACTIVE_EXPERIMENTS_LIMIT_REACHED", "SITES_LIMIT_REACHED", "UNKNOWN"]}, :EnvironmentType=>{:type=>"string", :enumerations=>["BROWSER", "VIDEO_PLAYER"]}, :"FeatureError.Reason"=>{:type=>"string", :enumerations=>["MISSING_FEATURE", "UNKNOWN"]}, :"FrequencyCapError.Reason"=>{:type=>"string", :enumerations=>["IMPRESSION_LIMIT_EXCEEDED", "IMPRESSIONS_TOO_LOW", "RANGE_LIMIT_EXCEEDED", "RANGE_TOO_LOW", "DUPLICATE_TIME_RANGE", "TOO_MANY_FREQUENCY_CAPS", "UNKNOWN"]}, :"InternalApiError.Reason"=>{:type=>"string", :enumerations=>["UNEXPECTED_INTERNAL_API_ERROR", "TRANSIENT_ERROR", "UNKNOWN", "DOWNTIME", "ERROR_GENERATING_RESPONSE"]}, :"InvalidColorError.Reason"=>{:type=>"string", :enumerations=>["INVALID_FORMAT", "UNKNOWN"]}, :"InvalidUrlError.Reason"=>{:type=>"string", :enumerations=>["ILLEGAL_CHARACTERS", "INVALID_FORMAT", "INSECURE_SCHEME", "NO_SCHEME", "UNKNOWN"]}, :InventoryStatus=>{:type=>"string", :enumerations=>["ACTIVE", "INACTIVE", "ARCHIVED"]}, :"InventoryUnitError.Reason"=>{:type=>"string", :enumerations=>["EXPLICIT_TARGETING_NOT_ALLOWED", "TARGET_PLATFORM_NOT_APPLICABLE", "ADSENSE_CANNOT_BE_ENABLED", "ROOT_UNIT_CANNOT_BE_DEACTIVATED", "UNKNOWN"]}, :"InventoryUnitRefreshRateError.Reason"=>{:type=>"string", :enumerations=>["INVALID_RANGE", "UNKNOWN"]}, :"InventoryUnitSizesError.Reason"=>{:type=>"string", :enumerations=>["INVALID_SIZES", "INVALID_SIZE_FOR_PLATFORM", "VIDEO_FEATURE_MISSING", "VIDEO_MOBILE_LINE_ITEM_FEATURE_MISSING", "INVALID_SIZE_FOR_MASTER", "INVALID_SIZE_FOR_COMPANION", "DUPLICATE_MASTER_SIZES", "ASPECT_RATIO_NOT_SUPPORTED", "VIDEO_COMPANIONS_NOT_SUPPORTED", "UNKNOWN"]}, :"LabelEntityAssociationError.Reason"=>{:type=>"string", :enumerations=>["DUPLICATE_ASSOCIATION", "INVALID_ASSOCIATION", "NEGATION_NOT_ALLOWED", "DUPLICATE_ASSOCIATION_WITH_NEGATION", "UNKNOWN"]}, :"NotNullError.Reason"=>{:type=>"string", :enumerations=>["ARG1_NULL", "ARG2_NULL", "ARG3_NULL", "NULL", "UNKNOWN"]}, :"NullError.Reason"=>{:type=>"string", :enumerations=>["NULL_CONTENT"]}, :"ParseError.Reason"=>{:type=>"string", :enumerations=>["UNPARSABLE", "UNKNOWN"]}, :"PermissionError.Reason"=>{:type=>"string", :enumerations=>["PERMISSION_DENIED", "UNKNOWN"]}, :ValueSourceType=>{:type=>"string", :enumerations=>["PARENT", "DIRECTLY_SPECIFIED", "UNKNOWN"]}, :"PublisherQueryLanguageContextError.Reason"=>{:type=>"string", :enumerations=>["UNEXECUTABLE", "UNKNOWN"]}, :"PublisherQueryLanguageSyntaxError.Reason"=>{:type=>"string", :enumerations=>["UNPARSABLE", "UNKNOWN"]}, :"QuotaError.Reason"=>{:type=>"string", :enumerations=>["EXCEEDED_QUOTA", "UNKNOWN", "REPORT_JOB_LIMIT", "SEGMENT_POPULATION_LIMIT"]}, :"RangeError.Reason"=>{:type=>"string", :enumerations=>["TOO_HIGH", "TOO_LOW", "UNKNOWN"]}, :"RegExError.Reason"=>{:type=>"string", :enumerations=>["INVALID", "NULL", "UNKNOWN"]}, :"RequiredCollectionError.Reason"=>{:type=>"string", :enumerations=>["REQUIRED", "TOO_LARGE", "TOO_SMALL", "UNKNOWN"]}, :"RequiredError.Reason"=>{:type=>"string", :enumerations=>["REQUIRED"]}, :"RequiredNumberError.Reason"=>{:type=>"string", :enumerations=>["REQUIRED", "TOO_LARGE", "TOO_SMALL", "TOO_LARGE_WITH_DETAILS", "TOO_SMALL_WITH_DETAILS", "UNKNOWN"]}, :"ServerError.Reason"=>{:type=>"string", :enumerations=>["SERVER_ERROR", "SERVER_BUSY", "UNKNOWN"]}, :SmartSizeMode=>{:type=>"string", :enumerations=>["UNKNOWN", "NONE", "SMART_BANNER", "DYNAMIC_SIZE"]}, :"StatementError.Reason"=>{:type=>"string", :enumerations=>["VARIABLE_NOT_BOUND_TO_VALUE", "UNKNOWN"]}, :"StringFormatError.Reason"=>{:type=>"string", :enumerations=>["UNKNOWN", "ILLEGAL_CHARS", "INVALID_FORMAT"]}, :"StringLengthError.Reason"=>{:type=>"string", :enumerations=>["TOO_LONG", "TOO_SHORT", "UNKNOWN"]}, :"TeamError.Reason"=>{:type=>"string", :enumerations=>["ENTITY_NOT_ON_USERS_TEAMS", "AD_UNITS_NOT_ON_ORDER_TEAMS", "PLACEMENTS_NOT_ON_ORDER_TEAMS", "MISSING_USERS_TEAM", "ALL_TEAM_ASSOCIATION_NOT_ALLOWED", "INVALID_TEAM_ASSIGNMENT", "CANNOT_UPDATE_INACTIVE_TEAM", "UNKNOWN"]}, :TimeUnit=>{:type=>"string", :enumerations=>["MINUTE", "HOUR", "DAY", "WEEK", "MONTH", "LIFETIME", "POD", "STREAM", "UNKNOWN"]}}
    INVENTORYSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return INVENTORYSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return INVENTORYSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return INVENTORYSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < AdManagerApi::Errors::ApiException
    attr_reader :message  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault, InventoryServiceRegistry)
    end
  end
end; end; end