shared_examples 'wget' do
  describe package 'wget' do
    it { should be_installed }
  end
end
