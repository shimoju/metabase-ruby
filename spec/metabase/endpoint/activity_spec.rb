# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::Activity do
  include_context 'login'

  describe 'activities', vcr: true do
    context 'success' do
      it 'returns recent activities' do
        activities = client.activity
        expect(activities).to be_kind_of(Array)
      end
    end
  end

  describe 'activity_recent_views', vcr: true do
    context 'success' do
      it 'returns the list of 10 things the current user has been viewing most recently' do
        byebug
        all_activities = client.activity
        recent_activities = client.activity(recent_views: true)
        expect(recent_activities).to be_kind_of(Array)
        expect(all_activities.size).to be > recent_activities.size
      end
    end
  end
end
