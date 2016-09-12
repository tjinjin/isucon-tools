shared_examples 'htop' do
  describe package 'htop' do
    it { should be_installed }
  end
end
