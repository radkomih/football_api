RSpec.describe FootballApi::Odds::Odd do
  let(:response) { load_response('odds') }

  before(:each) do
    stub_request(:get, uri)
      .with(headers: @headers)
      .to_return(status: 200, body: response.to_json, headers: {})
  end

  describe '.all_by_fixture' do
    let(:uri) { "#{@api_host}/odds/fixture/108705" }

    it "requests the odds by fixture endpoint" do
      expect(described_class.all_by_fixture(108705)).to eq(response.dig('api', 'odds'))
    end
  end

  describe '.all_by_date' do
    let(:uri) { "#{@api_host}/odds/date/2020-09-15" }

    let(:date) { Time.new(2020, 9, 15).strftime("%Y-%m-%d") }

    it "requests the odds by date endpoint" do
      expect(described_class.all_by_date(date)).to eq(response.dig('api', 'odds'))
    end

    context 'with paging' do
      let(:uri) { "#{@api_host}/odds/date/2020-09-15?page=2" }
      let(:page) { 2 }

      it "requests the odds by date endpoint with paging parameters" do
        expect(described_class.all_by_date(date, page: page)).to eq(response.dig('api', 'odds'))
      end

      context 'and timezone' do
        let(:uri) { "#{@api_host}/odds/date/2020-09-15?page=2?timezone=europe/london" }
        let(:timezone) { 'europe/london' }

        it "requests the odds by date endpoint with paging and timezone parameters" do
          expect(described_class.all_by_date(date, page: page, timezone: timezone))
            .to eq(response.dig('api', 'odds'))
        end
      end
    end
  end
end
