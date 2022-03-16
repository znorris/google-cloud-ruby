# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/dataflow/v1beta3/jobs.proto

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/dataflow/v1beta3/environment_pb'
require 'google/dataflow/v1beta3/snapshots_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/dataflow/v1beta3/jobs.proto", :syntax => :proto3) do
    add_message "google.dataflow.v1beta3.Job" do
      optional :id, :string, 1
      optional :project_id, :string, 2
      optional :name, :string, 3
      optional :type, :enum, 4, "google.dataflow.v1beta3.JobType"
      optional :environment, :message, 5, "google.dataflow.v1beta3.Environment"
      repeated :steps, :message, 6, "google.dataflow.v1beta3.Step"
      optional :steps_location, :string, 24
      optional :current_state, :enum, 7, "google.dataflow.v1beta3.JobState"
      optional :current_state_time, :message, 8, "google.protobuf.Timestamp"
      optional :requested_state, :enum, 9, "google.dataflow.v1beta3.JobState"
      optional :execution_info, :message, 10, "google.dataflow.v1beta3.JobExecutionInfo"
      optional :create_time, :message, 11, "google.protobuf.Timestamp"
      optional :replace_job_id, :string, 12
      map :transform_name_mapping, :string, :string, 13
      optional :client_request_id, :string, 14
      optional :replaced_by_job_id, :string, 15
      repeated :temp_files, :string, 16
      map :labels, :string, :string, 17
      optional :location, :string, 18
      optional :pipeline_description, :message, 19, "google.dataflow.v1beta3.PipelineDescription"
      repeated :stage_states, :message, 20, "google.dataflow.v1beta3.ExecutionStageState"
      optional :job_metadata, :message, 21, "google.dataflow.v1beta3.JobMetadata"
      optional :start_time, :message, 22, "google.protobuf.Timestamp"
      optional :created_from_snapshot_id, :string, 23
      optional :satisfies_pzs, :bool, 25
    end
    add_message "google.dataflow.v1beta3.DatastoreIODetails" do
      optional :namespace, :string, 1
      optional :project_id, :string, 2
    end
    add_message "google.dataflow.v1beta3.PubSubIODetails" do
      optional :topic, :string, 1
      optional :subscription, :string, 2
    end
    add_message "google.dataflow.v1beta3.FileIODetails" do
      optional :file_pattern, :string, 1
    end
    add_message "google.dataflow.v1beta3.BigTableIODetails" do
      optional :project_id, :string, 1
      optional :instance_id, :string, 2
      optional :table_id, :string, 3
    end
    add_message "google.dataflow.v1beta3.BigQueryIODetails" do
      optional :table, :string, 1
      optional :dataset, :string, 2
      optional :project_id, :string, 3
      optional :query, :string, 4
    end
    add_message "google.dataflow.v1beta3.SpannerIODetails" do
      optional :project_id, :string, 1
      optional :instance_id, :string, 2
      optional :database_id, :string, 3
    end
    add_message "google.dataflow.v1beta3.SdkVersion" do
      optional :version, :string, 1
      optional :version_display_name, :string, 2
      optional :sdk_support_status, :enum, 3, "google.dataflow.v1beta3.SdkVersion.SdkSupportStatus"
    end
    add_enum "google.dataflow.v1beta3.SdkVersion.SdkSupportStatus" do
      value :UNKNOWN, 0
      value :SUPPORTED, 1
      value :STALE, 2
      value :DEPRECATED, 3
      value :UNSUPPORTED, 4
    end
    add_message "google.dataflow.v1beta3.JobMetadata" do
      optional :sdk_version, :message, 1, "google.dataflow.v1beta3.SdkVersion"
      repeated :spanner_details, :message, 2, "google.dataflow.v1beta3.SpannerIODetails"
      repeated :bigquery_details, :message, 3, "google.dataflow.v1beta3.BigQueryIODetails"
      repeated :big_table_details, :message, 4, "google.dataflow.v1beta3.BigTableIODetails"
      repeated :pubsub_details, :message, 5, "google.dataflow.v1beta3.PubSubIODetails"
      repeated :file_details, :message, 6, "google.dataflow.v1beta3.FileIODetails"
      repeated :datastore_details, :message, 7, "google.dataflow.v1beta3.DatastoreIODetails"
    end
    add_message "google.dataflow.v1beta3.ExecutionStageState" do
      optional :execution_stage_name, :string, 1
      optional :execution_stage_state, :enum, 2, "google.dataflow.v1beta3.JobState"
      optional :current_state_time, :message, 3, "google.protobuf.Timestamp"
    end
    add_message "google.dataflow.v1beta3.PipelineDescription" do
      repeated :original_pipeline_transform, :message, 1, "google.dataflow.v1beta3.TransformSummary"
      repeated :execution_pipeline_stage, :message, 2, "google.dataflow.v1beta3.ExecutionStageSummary"
      repeated :display_data, :message, 3, "google.dataflow.v1beta3.DisplayData"
    end
    add_message "google.dataflow.v1beta3.TransformSummary" do
      optional :kind, :enum, 1, "google.dataflow.v1beta3.KindType"
      optional :id, :string, 2
      optional :name, :string, 3
      repeated :display_data, :message, 4, "google.dataflow.v1beta3.DisplayData"
      repeated :output_collection_name, :string, 5
      repeated :input_collection_name, :string, 6
    end
    add_message "google.dataflow.v1beta3.ExecutionStageSummary" do
      optional :name, :string, 1
      optional :id, :string, 2
      optional :kind, :enum, 3, "google.dataflow.v1beta3.KindType"
      repeated :input_source, :message, 4, "google.dataflow.v1beta3.ExecutionStageSummary.StageSource"
      repeated :output_source, :message, 5, "google.dataflow.v1beta3.ExecutionStageSummary.StageSource"
      repeated :prerequisite_stage, :string, 8
      repeated :component_transform, :message, 6, "google.dataflow.v1beta3.ExecutionStageSummary.ComponentTransform"
      repeated :component_source, :message, 7, "google.dataflow.v1beta3.ExecutionStageSummary.ComponentSource"
    end
    add_message "google.dataflow.v1beta3.ExecutionStageSummary.StageSource" do
      optional :user_name, :string, 1
      optional :name, :string, 2
      optional :original_transform_or_collection, :string, 3
      optional :size_bytes, :int64, 4
    end
    add_message "google.dataflow.v1beta3.ExecutionStageSummary.ComponentTransform" do
      optional :user_name, :string, 1
      optional :name, :string, 2
      optional :original_transform, :string, 3
    end
    add_message "google.dataflow.v1beta3.ExecutionStageSummary.ComponentSource" do
      optional :user_name, :string, 1
      optional :name, :string, 2
      optional :original_transform_or_collection, :string, 3
    end
    add_message "google.dataflow.v1beta3.DisplayData" do
      optional :key, :string, 1
      optional :namespace, :string, 2
      optional :short_str_value, :string, 11
      optional :url, :string, 12
      optional :label, :string, 13
      oneof :Value do
        optional :str_value, :string, 4
        optional :int64_value, :int64, 5
        optional :float_value, :float, 6
        optional :java_class_value, :string, 7
        optional :timestamp_value, :message, 8, "google.protobuf.Timestamp"
        optional :duration_value, :message, 9, "google.protobuf.Duration"
        optional :bool_value, :bool, 10
      end
    end
    add_message "google.dataflow.v1beta3.Step" do
      optional :kind, :string, 1
      optional :name, :string, 2
      optional :properties, :message, 3, "google.protobuf.Struct"
    end
    add_message "google.dataflow.v1beta3.JobExecutionInfo" do
      map :stages, :string, :message, 1, "google.dataflow.v1beta3.JobExecutionStageInfo"
    end
    add_message "google.dataflow.v1beta3.JobExecutionStageInfo" do
      repeated :step_name, :string, 1
    end
    add_message "google.dataflow.v1beta3.CreateJobRequest" do
      optional :project_id, :string, 1
      optional :job, :message, 2, "google.dataflow.v1beta3.Job"
      optional :view, :enum, 3, "google.dataflow.v1beta3.JobView"
      optional :replace_job_id, :string, 4
      optional :location, :string, 5
    end
    add_message "google.dataflow.v1beta3.GetJobRequest" do
      optional :project_id, :string, 1
      optional :job_id, :string, 2
      optional :view, :enum, 3, "google.dataflow.v1beta3.JobView"
      optional :location, :string, 4
    end
    add_message "google.dataflow.v1beta3.UpdateJobRequest" do
      optional :project_id, :string, 1
      optional :job_id, :string, 2
      optional :job, :message, 3, "google.dataflow.v1beta3.Job"
      optional :location, :string, 4
    end
    add_message "google.dataflow.v1beta3.ListJobsRequest" do
      optional :filter, :enum, 5, "google.dataflow.v1beta3.ListJobsRequest.Filter"
      optional :project_id, :string, 1
      optional :view, :enum, 2, "google.dataflow.v1beta3.JobView"
      optional :page_size, :int32, 3
      optional :page_token, :string, 4
      optional :location, :string, 17
    end
    add_enum "google.dataflow.v1beta3.ListJobsRequest.Filter" do
      value :UNKNOWN, 0
      value :ALL, 1
      value :TERMINATED, 2
      value :ACTIVE, 3
    end
    add_message "google.dataflow.v1beta3.FailedLocation" do
      optional :name, :string, 1
    end
    add_message "google.dataflow.v1beta3.ListJobsResponse" do
      repeated :jobs, :message, 1, "google.dataflow.v1beta3.Job"
      optional :next_page_token, :string, 2
      repeated :failed_location, :message, 3, "google.dataflow.v1beta3.FailedLocation"
    end
    add_message "google.dataflow.v1beta3.SnapshotJobRequest" do
      optional :project_id, :string, 1
      optional :job_id, :string, 2
      optional :ttl, :message, 3, "google.protobuf.Duration"
      optional :location, :string, 4
      optional :snapshot_sources, :bool, 5
      optional :description, :string, 6
    end
    add_message "google.dataflow.v1beta3.CheckActiveJobsRequest" do
      optional :project_id, :string, 1
    end
    add_message "google.dataflow.v1beta3.CheckActiveJobsResponse" do
      optional :active_jobs_exist, :bool, 1
    end
    add_enum "google.dataflow.v1beta3.KindType" do
      value :UNKNOWN_KIND, 0
      value :PAR_DO_KIND, 1
      value :GROUP_BY_KEY_KIND, 2
      value :FLATTEN_KIND, 3
      value :READ_KIND, 4
      value :WRITE_KIND, 5
      value :CONSTANT_KIND, 6
      value :SINGLETON_KIND, 7
      value :SHUFFLE_KIND, 8
    end
    add_enum "google.dataflow.v1beta3.JobState" do
      value :JOB_STATE_UNKNOWN, 0
      value :JOB_STATE_STOPPED, 1
      value :JOB_STATE_RUNNING, 2
      value :JOB_STATE_DONE, 3
      value :JOB_STATE_FAILED, 4
      value :JOB_STATE_CANCELLED, 5
      value :JOB_STATE_UPDATED, 6
      value :JOB_STATE_DRAINING, 7
      value :JOB_STATE_DRAINED, 8
      value :JOB_STATE_PENDING, 9
      value :JOB_STATE_CANCELLING, 10
      value :JOB_STATE_QUEUED, 11
      value :JOB_STATE_RESOURCE_CLEANING_UP, 12
    end
    add_enum "google.dataflow.v1beta3.JobView" do
      value :JOB_VIEW_UNKNOWN, 0
      value :JOB_VIEW_SUMMARY, 1
      value :JOB_VIEW_ALL, 2
      value :JOB_VIEW_DESCRIPTION, 3
    end
  end
end

module Google
  module Cloud
    module Dataflow
      module V1beta3
        Job = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.Job").msgclass
        DatastoreIODetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.DatastoreIODetails").msgclass
        PubSubIODetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.PubSubIODetails").msgclass
        FileIODetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.FileIODetails").msgclass
        BigTableIODetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.BigTableIODetails").msgclass
        BigQueryIODetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.BigQueryIODetails").msgclass
        SpannerIODetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.SpannerIODetails").msgclass
        SdkVersion = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.SdkVersion").msgclass
        SdkVersion::SdkSupportStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.SdkVersion.SdkSupportStatus").enummodule
        JobMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.JobMetadata").msgclass
        ExecutionStageState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.ExecutionStageState").msgclass
        PipelineDescription = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.PipelineDescription").msgclass
        TransformSummary = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.TransformSummary").msgclass
        ExecutionStageSummary = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.ExecutionStageSummary").msgclass
        ExecutionStageSummary::StageSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.ExecutionStageSummary.StageSource").msgclass
        ExecutionStageSummary::ComponentTransform = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.ExecutionStageSummary.ComponentTransform").msgclass
        ExecutionStageSummary::ComponentSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.ExecutionStageSummary.ComponentSource").msgclass
        DisplayData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.DisplayData").msgclass
        Step = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.Step").msgclass
        JobExecutionInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.JobExecutionInfo").msgclass
        JobExecutionStageInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.JobExecutionStageInfo").msgclass
        CreateJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.CreateJobRequest").msgclass
        GetJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.GetJobRequest").msgclass
        UpdateJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.UpdateJobRequest").msgclass
        ListJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.ListJobsRequest").msgclass
        ListJobsRequest::Filter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.ListJobsRequest.Filter").enummodule
        FailedLocation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.FailedLocation").msgclass
        ListJobsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.ListJobsResponse").msgclass
        SnapshotJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.SnapshotJobRequest").msgclass
        CheckActiveJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.CheckActiveJobsRequest").msgclass
        CheckActiveJobsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.CheckActiveJobsResponse").msgclass
        KindType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.KindType").enummodule
        JobState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.JobState").enummodule
        JobView = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.JobView").enummodule
      end
    end
  end
end
