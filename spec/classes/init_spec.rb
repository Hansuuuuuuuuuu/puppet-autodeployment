require 'spec_helper'
describe 'autodeployment' do
  context 'with default values for all parameters' do
    it { should contain_class('autodeployment') }
  end
end
