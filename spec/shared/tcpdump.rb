shared_examples 'tcpdump' do
  describe package 'tcpdump' do
    it { should be_installed }
  end
end
