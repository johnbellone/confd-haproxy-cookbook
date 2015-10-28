require 'spec_helper'

describe 'confd-haproxy::default' do
  cached(:chef_run) { ChefSpec::SoloRunner.new.converge('confd-haproxy::default') }
  context 'with default node attributes' do
    it { expect(chef_run).to include_recipe('confd::default') }
    it { expect(chef_run).to include_recipe('haproxy::default') }
    it { chef_run }
  end
end
