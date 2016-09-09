shared_examples 'jq' do
  describe command 'jq --version' do
    its(:stdout) { should include('jq')}
  end
end
