shared_examples 'user' do
  describe file '/home/isucon/.ssh/authorized_keys' do
    it { should be_exist }
  end
end
