shared_examples 'dig' do
  describe package 'dig' do
    it { should be_installed }
  end
end
