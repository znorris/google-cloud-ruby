# frozen_string_literal: true

# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module AIPlatform
      module V1
        # Feature Metadata information that describes an attribute of an entity type.
        # For example, apple is an entity type, and color is a feature that describes
        # apple.
        # @!attribute [rw] name
        #   @return [::String]
        #     Immutable. Name of the Feature.
        #     Format:
        #     `projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entity_type}/features/{feature}`
        #
        #     The last part feature is assigned by the client. The feature can be up to
        #     64 characters long and can consist only of ASCII Latin letters A-Z and a-z,
        #     underscore(_), and ASCII digits 0-9 starting with a letter. The value will
        #     be unique given an entity type.
        # @!attribute [rw] description
        #   @return [::String]
        #     Description of the Feature.
        # @!attribute [rw] value_type
        #   @return [::Google::Cloud::AIPlatform::V1::Feature::ValueType]
        #     Required. Immutable. Type of Feature value.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this EntityType was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this EntityType was most recently updated.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. The labels with user-defined metadata to organize your Features.
        #
        #     Label keys and values can be no longer than 64 characters
        #     (Unicode codepoints), can only contain lowercase letters, numeric
        #     characters, underscores and dashes. International characters are allowed.
        #
        #     See https://goo.gl/xmQnxf for more information on and examples of labels.
        #     No more than 64 user labels can be associated with one Feature (System
        #     labels are excluded)."
        #     System reserved label keys are prefixed with "aiplatform.googleapis.com/"
        #     and are immutable.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Used to perform a consistent read-modify-write updates. If not set, a blind
        #     "overwrite" update happens.
        # @!attribute [rw] disable_monitoring
        #   @return [::Boolean]
        #     Optional. If not set, use the monitoring_config defined for the EntityType
        #     this Feature belongs to. Only Features with type
        #     ({::Google::Cloud::AIPlatform::V1::Feature::ValueType Feature.ValueType}) BOOL,
        #     STRING, DOUBLE or INT64 can enable monitoring.
        #
        #     If set to true, all types of data monitoring are disabled despite the
        #     config on EntityType.
        # @!attribute [r] monitoring_stats_anomalies
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::Feature::MonitoringStatsAnomaly>]
        #     Output only. The list of historical stats and anomalies with specified
        #     objectives.
        class Feature
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # A list of historical [Snapshot
          # Analysis][FeaturestoreMonitoringConfig.SnapshotAnalysis] or [Import Feature
          # Analysis] [FeaturestoreMonitoringConfig.ImportFeatureAnalysis] stats
          # requested by user, sorted by
          # {::Google::Cloud::AIPlatform::V1::FeatureStatsAnomaly#start_time FeatureStatsAnomaly.start_time}
          # descending.
          # @!attribute [r] objective
          #   @return [::Google::Cloud::AIPlatform::V1::Feature::MonitoringStatsAnomaly::Objective]
          #     Output only. The objective for each stats.
          # @!attribute [r] feature_stats_anomaly
          #   @return [::Google::Cloud::AIPlatform::V1::FeatureStatsAnomaly]
          #     Output only. The stats and anomalies generated at specific timestamp.
          class MonitoringStatsAnomaly
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # If the objective in the request is both
            # Import Feature Analysis and Snapshot Analysis, this objective could be
            # one of them. Otherwise, this objective should be the same as the
            # objective in the request.
            module Objective
              # If it's OBJECTIVE_UNSPECIFIED, monitoring_stats will be empty.
              OBJECTIVE_UNSPECIFIED = 0

              # Stats are generated by Import Feature Analysis.
              IMPORT_FEATURE_ANALYSIS = 1

              # Stats are generated by Snapshot Analysis.
              SNAPSHOT_ANALYSIS = 2
            end
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # An enum representing the value type of a feature.
          module ValueType
            # The value type is unspecified.
            VALUE_TYPE_UNSPECIFIED = 0

            # Used for Feature that is a boolean.
            BOOL = 1

            # Used for Feature that is a list of boolean.
            BOOL_ARRAY = 2

            # Used for Feature that is double.
            DOUBLE = 3

            # Used for Feature that is a list of double.
            DOUBLE_ARRAY = 4

            # Used for Feature that is INT64.
            INT64 = 9

            # Used for Feature that is a list of INT64.
            INT64_ARRAY = 10

            # Used for Feature that is string.
            STRING = 11

            # Used for Feature that is a list of String.
            STRING_ARRAY = 12

            # Used for Feature that is bytes.
            BYTES = 13
          end
        end
      end
    end
  end
end
