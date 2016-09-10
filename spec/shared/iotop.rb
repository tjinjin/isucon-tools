shared_examples 'iotop' do
  describe package 'iotop' do
    it { should be_installed }
  end
end
