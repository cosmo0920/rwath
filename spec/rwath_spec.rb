# -*- coding: utf-8 -*-
require "rwath"

RSpec.configure do |c|
  # declare an exclusion filter
  c.filter_run_excluding :spec_ci => true
end

describe Rwath do
  let(:rwath) { Rwath.new }
  subject { rwath }
  it { should respond_to :split }

  describe "#split" do
    context "when nothing specify", :spec_ci => false do
      subject { rwath.split('ตัวอักษรไทยเป็นเรื่องยาก') }
      it "output with TIS-620 encoding by default" do
        should eq '฀ัวอั฀ษรเ฀ยเ฀เ฀เรืเอ฀ยา฀'
      end
    end

    context "when specify delimitor" do
      let (:space) { ' ' }
      let (:config) { Rwath::Config.new }
      let (:setting) do
        config.delimitor(char: space)
        config.encode(input: 'u', output: 'u')
      end
      let(:thai_characters) { 'ตัวอักษรไทยเป็นเรื่องยาก' }
      let (:rwath_with_delimitor) { Rwath.new(config: setting) }

      context "local development", :spec_ci => false do
        subject { rwath_with_delimitor.split(thai_characters) }
        it { should eq 'ตัว อักษร ไทย เป็น เรื่อง ยาก'}
      end
      context "CI development", :spec_ci => true do
        subject { rwath_with_delimitor.split(thai_characters) }
        it { should include ' ' }
      end
    end
  end
end

describe Rwath::Process do
  let(:command) { 'swath -u u,u' }
  let(:process) { Rwath::Process.new(command) }
  let(:thai_characters) { 'ตัวอักษรไทยเป็นเรื่องยาก' }
  subject { process }
  it { should respond_to :split_exec }

  context "local development", :spec_ci => false do
    describe "#split_exec" do
      subject { process.split_exec(thai_characters) }
      it { should eq 'ตัว|อักษร|ไทย|เป็น|เรื่อง|ยาก'}
    end
  end
  context "CI development", :spec_ci => true do
    describe "#split_exec" do
      subject { process.split_exec(thai_characters) }
      it { should include '|' }
    end
  end
end
