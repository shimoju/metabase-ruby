# frozen_string_literal: true

RSpec.describe Metabase::Connection do
  include_context 'client'

  describe 'get' do
    include_examples 'response handling' do
      let(:method) { :get }
    end
  end

  describe 'post' do
    include_examples 'response handling' do
      let(:method) { :post }
    end
  end

  describe 'put' do
    include_examples 'response handling' do
      let(:method) { :put }
    end
  end

  describe 'delete' do
    include_examples 'response handling' do
      let(:method) { :delete }
    end
  end

  describe 'head' do
    include_examples 'response handling' do
      let(:method) { :head }
    end
  end
end
