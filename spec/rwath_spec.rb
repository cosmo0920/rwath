# -*- coding: utf-8 -*-
require "rwath"

describe Rwath do
  let(:rwath) { Rwath.new }
  subject { rwath }
  it { should respond_to :split }

  describe "#split" do
    context "when nothing specify" do
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
      let (:rwath_with_delimitor) { Rwath.new(config: setting) }
      subject { rwath_with_delimitor.split('ตัวอักษรไทยเป็นเรื่องยาก') }
      it { should eq 'ตัว อักษร ไทย เป็น เรื่อง ยาก'}
    end
  end
end

describe Rwath::Process do
  let(:command) { 'swath -u u,u' }
  let(:process) { Rwath::Process.new(command) }
  subject { process }
  it { should respond_to :split_exec }
  describe "#split_exec" do
    subject { process.split_exec('ตัวอักษรไทยเป็นเรื่องยาก') }
    it { should eq 'ตัว|อักษร|ไทย|เป็น|เรื่อง|ยาก'}
  end
end
