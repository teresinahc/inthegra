require 'spec_helper'

describe Inthegra::Client::Lines do

  let(:client) do
    Inthegra::Client.new(email: 'email@test.com', password: 'teste123', api_key: 'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq')
  end

  before do
    VCR.use_cassette('authenticate') do
      client.authenticate
    end
  end

  describe '.lines' do

    let :lines do
      VCR.use_cassette('lines') do
        client.lines
      end
    end

    it "should return an array" do
      expect(lines).to be_an_instance_of(Array)
    end

    it "is expected not to be empty" do
      expect(lines).not_to be_empty
    end

    it "is expected elements to be instance of BusStop" do
      expect(lines[0]).to be_an_instance_of(Inthegra::Line)
    end

  end

  describe '.line_search' do

    let :line_search do
      VCR.use_cassette('line_search') do
        client.line_search('ininga')
      end
    end

    it "should return an array" do
      expect(line_search).to be_an_instance_of(Array)
    end

    it "is expected not to be empty" do
      expect(line_search).not_to be_empty
    end

    it "is expected elements to be instance of BusStop" do
      expect(line_search[0]).to be_an_instance_of(Inthegra::Line)
    end

  end

end
