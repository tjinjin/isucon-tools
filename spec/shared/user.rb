shared_examples 'user' do
  describe user 'isucon' do
    it { should exist }
  end

  describe file '/home/isucon/.ssh/authorized_keys' do
    it { should be_exist }
  end
end
