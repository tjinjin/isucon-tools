shared_examples 'redis-cli' do
  describe command 'redis-cli --version' do
    its(:exit_status) { should eq 0 }
  end
end
