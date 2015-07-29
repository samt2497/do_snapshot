# -*- encoding : utf-8 -*-
require 'spec_helper'

RSpec.describe DoSnapshot::Adapter::Abstract do
  include_context 'spec'

  subject(:api) { described_class }

  describe '.initialize' do
    describe '#delay' do
      let(:delay) { 5 }
      let(:instance) { api.new(delay: delay) }
      it('with custom delay') { expect(instance.delay).to eq delay  }
    end

    describe '#timeout' do
      let(:timeout) { 5 }
      let(:instance) { api.new(timeout: timeout) }
      it('with custom timeout') { expect(instance.timeout).to eq timeout  }
    end
  end
end