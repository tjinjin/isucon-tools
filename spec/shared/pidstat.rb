shared_examples 'pidstat' do
  describe command 'pidstat' do
    its(:exit_status) { should eq 0 }
  end
end
