shared_examples 'lsof' do
  describe package 'lsof' do
    it { should be_installed }
  end
end
