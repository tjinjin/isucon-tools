shared_examples 'emacs' do
  describe package 'emacs' do
    it { should be_installed }
  end
end
