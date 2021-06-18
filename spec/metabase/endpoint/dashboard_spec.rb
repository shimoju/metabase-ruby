# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::Dashboard do
  include_context 'login'
  let(:dashboard_id) { 1 }
  let(:card_id) { 1 }

  describe 'dashboards', vcr: true do
    context 'success' do
      it 'returns all dashboards' do
        dashboards = client.dashboards
        expect(dashboards).to be_kind_of(Array)
      end
    end
  end

  describe 'dashboard', vcr: true do
    context 'success' do
      it 'returns the dashboard' do
        dashboard = client.dashboard(dashboard_id)
        expect(dashboard).to be_kind_of(Hash)
      end
    end
  end

  describe 'new_dashboard', vcr: true do
    context 'success' do
      it 'create a new dashboard' do
        dashboard = client.dashboard(dashboard_id)
        new_dashboard = client.new_dashboard(**dashboard)
        expect(new_dashboard).to be_kind_of(Hash)
      end
    end
  end

  describe 'copy_dashboard', vcr: true do
    context 'success' do
      it 'create a copy dashboard' do
        dashboard = client.dashboard(dashboard_id)
        copy_dashboard = client.copy_dashboard(dashboard_id, **dashboard)
        expect(copy_dashboard).to be_kind_of(Hash)
      end
    end
  end

  describe 'add_dashboard_cards', vcr: true do
    context 'success' do
      it 'add a dashboard cards' do
        card = client.dashboard(dashboard_id)
        card = client.card(card_id)
        add_dashboard_cards = client.add_dashboard_card(dashboard_id, **card)
        expect(add_dashboard_cards).to be_kind_of(Hash)
      end
    end
  end

  describe 'update_dashboard_cards', vcr: true do
    context 'success' do
      it 'update a dashboard cards' do
        dashboard = client.dashboard(dashboard_id)
        update_dashboard_cards = client.update_dashboard_cards(dashboard_id, **dashboard)
        expect(update_dashboard_cards).to be_kind_of(Hash)
      end
    end
  end

  describe 'delete_dashboard_card', vcr: true do
    context 'success' do
      it 'delete a dashboard card' do
        dashboard = client.dashboard(dashboard_id)
        params = { dashcardId: dashboard['ordered_cards'][0]['id'] }
        delete_dashboard_card = client.delete_dashboard_card(dashboard_id, **params)
        expect(delete_dashboard_card).to be_nil
      end
    end
  end
end
