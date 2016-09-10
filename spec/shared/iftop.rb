shared_examples 'iftop' do
  describe package 'iftop' do
    it { should be_installed }
  end
end
