shared_examples 'redis-cli' do
  describe package 'redis-cli' do
    it { should be_installed }
  end
end
