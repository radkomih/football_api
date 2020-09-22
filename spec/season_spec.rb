RSpec.describe FootballApi::Season do
  let(:response) { load_response('seasons') }

  before(:each) do
    stub_request(:get, uri)
      .with(headers: @headers)
      .to_return(status: 200, body: response.to_json, headers: {})
  end

  describe '.all' do
    let(:uri) { "#{@api_host}/seasons" }

    it "requests the seasons endpoint" do
      expect(described_class.all).to eq(response.dig('api', 'seasons'))
    end
  end
end
