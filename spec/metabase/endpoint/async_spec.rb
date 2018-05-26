# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::Async do
  include_context 'login'

  describe 'running_jobs', vcr: true do
    context 'success' do
      it 'returns all running jobs' do
        client.x_ray_card(1)
        running_jobs = client.running_jobs
        expect(running_jobs).to be_kind_of(Array)
      end
    end
  end
end
