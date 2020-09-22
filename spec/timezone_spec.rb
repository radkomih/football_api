RSpec.describe FootballApi::Timezone do
  let(:uri) { "#{@api_host}/timezone" }
  let(:response) { load_response('timezone') }

  before(:each) do
    stub_request(:get, uri)
      .with(headers: @headers)
      .to_return(status: 200, body: response.to_json, headers: {})
  end

  describe '.all' do
    it "requests the timezone endpoint with correct parameters" do
      expect(described_class.all).to eq(response.dig('api', 'timezone'))
    end
  end
end
