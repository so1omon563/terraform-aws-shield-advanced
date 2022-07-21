# frozen_string_literal: true

include_controls 'inspec-aws'
require './test/library/common'

tfstate = StateFileReader.new
sns_id = tfstate.read['outputs']['sns']['value']['topic']['arn'].to_s
sns_prefix_id = tfstate.read['outputs']['sns-prefix']['value']['topic']['arn'].to_s
sns_override_id = tfstate.read['outputs']['sns-override']['value']['topic']['arn'].to_s

control 'default' do
  describe aws_sns_topic(sns_id) do
    # https://github.com/inspec/inspec-aws/blob/main/docs/resources/aws_sns_topic.md
    it { should exist }
    its('kms_master_key_id') { should eq nil }
    its('confirmed_subscription_count') { should be_zero }
  end

  describe aws_sns_topic(sns_prefix_id) do
    # https://github.com/inspec/inspec-aws/blob/main/docs/resources/aws_sns_topic.md
    it { should exist }
    its('kms_master_key_id') { should eq nil }
    its('confirmed_subscription_count') { should be_zero }
  end

  describe aws_sns_topic(sns_override_id) do
    # https://github.com/inspec/inspec-aws/blob/main/docs/resources/aws_sns_topic.md
    it { should exist }
    its('kms_master_key_id') { should eq nil }
    its('confirmed_subscription_count') { should be_zero }
  end
end
