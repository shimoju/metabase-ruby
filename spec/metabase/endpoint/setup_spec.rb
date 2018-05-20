# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::Setup do
  include_context 'login'

  describe 'admin_checklists', vcr: true do
    context 'success' do
      it 'returns admin checklists' do
        admin_checklists = client.admin_checklists
        expect(admin_checklists).to be_kind_of(Array)
      end
    end
  end
end
