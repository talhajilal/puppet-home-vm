require 'spec_helper'
describe 'training' do

  context 'with defaults for all parameters' do
    it { should contain_class('training') }
  end
end
