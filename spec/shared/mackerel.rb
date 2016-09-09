shared_examples 'mackerel' do
  describe package 'mackerel-agent' do
    it { should be_installed }
  end

  describe package 'mackerel-agent-plugins' do
    it { should be_installed }
  end
end
