# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::Activity do
  include_context 'login'

  describe 'activities', vcr: true do
    context 'success' do
      it 'returns recent activities' do
        activities = client.activities
        expect(activities.size).to eq(4)
      end
    end
  end
end
