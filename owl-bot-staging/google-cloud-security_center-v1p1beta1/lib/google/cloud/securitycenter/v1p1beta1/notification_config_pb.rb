# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/securitycenter/v1p1beta1/notification_config.proto

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/api/annotations_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/securitycenter/v1p1beta1/notification_config.proto", :syntax => :proto3) do
    add_message "google.cloud.securitycenter.v1p1beta1.NotificationConfig" do
      optional :name, :string, 1
      optional :description, :string, 2
      optional :event_type, :enum, 3, "google.cloud.securitycenter.v1p1beta1.NotificationConfig.EventType"
      optional :pubsub_topic, :string, 4
      optional :service_account, :string, 5
      oneof :notify_config do
        optional :streaming_config, :message, 6, "google.cloud.securitycenter.v1p1beta1.NotificationConfig.StreamingConfig"
      end
    end
    add_message "google.cloud.securitycenter.v1p1beta1.NotificationConfig.StreamingConfig" do
      optional :filter, :string, 1
    end
    add_enum "google.cloud.securitycenter.v1p1beta1.NotificationConfig.EventType" do
      value :EVENT_TYPE_UNSPECIFIED, 0
      value :FINDING, 1
    end
  end
end

module Google
  module Cloud
    module SecurityCenter
      module V1p1beta1
        NotificationConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1p1beta1.NotificationConfig").msgclass
        NotificationConfig::StreamingConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1p1beta1.NotificationConfig.StreamingConfig").msgclass
        NotificationConfig::EventType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1p1beta1.NotificationConfig.EventType").enummodule
      end
    end
  end
end
