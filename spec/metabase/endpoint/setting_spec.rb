# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::Setting do
  include_context 'login'

  describe 'settings', vcr: true do
    context 'success' do
      it 'returns all settings' do
        settings = client.settings
        expect(settings).to be_kind_of(Array)
      end
    end
  end
end
