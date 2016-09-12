shared_examples 'kataribe' do
  describe file '/usr/local/bin/kataribe' do
    it { should be_exist }
  end

  describe file '/home/isucon/kataribe.toml' do
    it { should be_exist }
  end
end
