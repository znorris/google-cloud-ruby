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
    module Dataflow
      module V1beta3
        # A particular message pertaining to a Dataflow job.
        # @!attribute [rw] id
        #   @return [::String]
        #     Deprecated.
        # @!attribute [rw] time
        #   @return [::Google::Protobuf::Timestamp]
        #     The timestamp of the message.
        # @!attribute [rw] message_text
        #   @return [::String]
        #     The text of the message.
        # @!attribute [rw] message_importance
        #   @return [::Google::Cloud::Dataflow::V1beta3::JobMessageImportance]
        #     Importance level of the message.
        class JobMessage
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A rich message format, including a human readable string, a key for
        # identifying the message, and structured data associated with the message for
        # programmatic consumption.
        # @!attribute [rw] message_text
        #   @return [::String]
        #     Human-readable version of message.
        # @!attribute [rw] message_key
        #   @return [::String]
        #     Identifier for this message type.  Used by external systems to
        #     internationalize or personalize message.
        # @!attribute [rw] parameters
        #   @return [::Array<::Google::Cloud::Dataflow::V1beta3::StructuredMessage::Parameter>]
        #     The structured data associated with this message.
        class StructuredMessage
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Structured data associated with this message.
          # @!attribute [rw] key
          #   @return [::String]
          #     Key or name for this parameter.
          # @!attribute [rw] value
          #   @return [::Google::Protobuf::Value]
          #     Value for this parameter.
          class Parameter
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # A structured message reporting an autoscaling decision made by the Dataflow
        # service.
        # @!attribute [rw] current_num_workers
        #   @return [::Integer]
        #     The current number of workers the job has.
        # @!attribute [rw] target_num_workers
        #   @return [::Integer]
        #     The target number of workers the worker pool wants to resize to use.
        # @!attribute [rw] event_type
        #   @return [::Google::Cloud::Dataflow::V1beta3::AutoscalingEvent::AutoscalingEventType]
        #     The type of autoscaling event to report.
        # @!attribute [rw] description
        #   @return [::Google::Cloud::Dataflow::V1beta3::StructuredMessage]
        #     A message describing why the system decided to adjust the current
        #     number of workers, why it failed, or why the system decided to
        #     not make any changes to the number of workers.
        # @!attribute [rw] time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time this event was emitted to indicate a new target or current
        #     num_workers value.
        # @!attribute [rw] worker_pool
        #   @return [::String]
        #     A short and friendly name for the worker pool this event refers to.
        class AutoscalingEvent
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Indicates the type of autoscaling event.
          module AutoscalingEventType
            # Default type for the enum.  Value should never be returned.
            TYPE_UNKNOWN = 0

            # The TARGET_NUM_WORKERS_CHANGED type should be used when the target
            # worker pool size has changed at the start of an actuation. An event
            # should always be specified as TARGET_NUM_WORKERS_CHANGED if it reflects
            # a change in the target_num_workers.
            TARGET_NUM_WORKERS_CHANGED = 1

            # The CURRENT_NUM_WORKERS_CHANGED type should be used when actual worker
            # pool size has been changed, but the target_num_workers has not changed.
            CURRENT_NUM_WORKERS_CHANGED = 2

            # The ACTUATION_FAILURE type should be used when we want to report
            # an error to the user indicating why the current number of workers
            # in the pool could not be changed.
            # Displayed in the current status and history widgets.
            ACTUATION_FAILURE = 3

            # Used when we want to report to the user a reason why we are
            # not currently adjusting the number of workers.
            # Should specify both target_num_workers, current_num_workers and a
            # decision_message.
            NO_CHANGE = 4
          end
        end

        # Request to list job messages.
        # Up to max_results messages will be returned in the time range specified
        # starting with the oldest messages first. If no time range is specified
        # the results with start with the oldest message.
        # @!attribute [rw] project_id
        #   @return [::String]
        #     A project id.
        # @!attribute [rw] job_id
        #   @return [::String]
        #     The job to get messages about.
        # @!attribute [rw] minimum_importance
        #   @return [::Google::Cloud::Dataflow::V1beta3::JobMessageImportance]
        #     Filter to only get messages with importance >= level
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     If specified, determines the maximum number of messages to
        #     return.  If unspecified, the service may choose an appropriate
        #     default, or may return an arbitrarily large number of results.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     If supplied, this should be the value of next_page_token returned
        #     by an earlier call. This will cause the next page of results to
        #     be returned.
        # @!attribute [rw] start_time
        #   @return [::Google::Protobuf::Timestamp]
        #     If specified, return only messages with timestamps >= start_time.
        #     The default is the job creation time (i.e. beginning of messages).
        # @!attribute [rw] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Return only messages with timestamps < end_time. The default is now
        #     (i.e. return up to the latest messages available).
        # @!attribute [rw] location
        #   @return [::String]
        #     The [regional endpoint]
        #     (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that
        #     contains the job specified by job_id.
        class ListJobMessagesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response to a request to list job messages.
        # @!attribute [rw] job_messages
        #   @return [::Array<::Google::Cloud::Dataflow::V1beta3::JobMessage>]
        #     Messages in ascending timestamp order.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     The token to obtain the next page of results if there are more.
        # @!attribute [rw] autoscaling_events
        #   @return [::Array<::Google::Cloud::Dataflow::V1beta3::AutoscalingEvent>]
        #     Autoscaling events in ascending timestamp order.
        class ListJobMessagesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Indicates the importance of the message.
        module JobMessageImportance
          # The message importance isn't specified, or is unknown.
          JOB_MESSAGE_IMPORTANCE_UNKNOWN = 0

          # The message is at the 'debug' level: typically only useful for
          # software engineers working on the code the job is running.
          # Typically, Dataflow pipeline runners do not display log messages
          # at this level by default.
          JOB_MESSAGE_DEBUG = 1

          # The message is at the 'detailed' level: somewhat verbose, but
          # potentially useful to users.  Typically, Dataflow pipeline
          # runners do not display log messages at this level by default.
          # These messages are displayed by default in the Dataflow
          # monitoring UI.
          JOB_MESSAGE_DETAILED = 2

          # The message is at the 'basic' level: useful for keeping
          # track of the execution of a Dataflow pipeline.  Typically,
          # Dataflow pipeline runners display log messages at this level by
          # default, and these messages are displayed by default in the
          # Dataflow monitoring UI.
          JOB_MESSAGE_BASIC = 5

          # The message is at the 'warning' level: indicating a condition
          # pertaining to a job which may require human intervention.
          # Typically, Dataflow pipeline runners display log messages at this
          # level by default, and these messages are displayed by default in
          # the Dataflow monitoring UI.
          JOB_MESSAGE_WARNING = 3

          # The message is at the 'error' level: indicating a condition
          # preventing a job from succeeding.  Typically, Dataflow pipeline
          # runners display log messages at this level by default, and these
          # messages are displayed by default in the Dataflow monitoring UI.
          JOB_MESSAGE_ERROR = 4
        end
      end
    end
  end
end
