RSpec.describe FootballApi::Country do
  let(:response) { load_response('countries') }

  before(:each) do
    stub_request(:get, uri)
      .with(headers: @headers)
      .to_return(status: 200, body: response.to_json, headers: {})
  end

  describe '.all' do
    let(:uri) { "#{@api_host}/countries" }

    it "requests the countries endpoint" do
      expect(described_class.all).to eq(response.dig('api', 'countries'))
    end
  end
end
