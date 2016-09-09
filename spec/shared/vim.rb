shared_examples 'vim' do
  describe package 'vim-enhanced' do
    it { should be_installed }
  end
end
