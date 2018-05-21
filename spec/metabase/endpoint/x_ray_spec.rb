# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::XRay do
  include_context 'login'

  describe 'x_ray_card', vcr: true do
    context 'success' do
      it 'returns x-ray job' do
        x_ray = client.x_ray_card(1)
        expect(x_ray).to be_kind_of(Hash)
      end
    end
  end
end
