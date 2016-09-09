shared_examples 'jq' do
  describe package 'jq' do
    it { should be_installed }
  end
end
