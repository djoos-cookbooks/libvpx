require 'spec_helper'

describe 'libvpx::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }
end
