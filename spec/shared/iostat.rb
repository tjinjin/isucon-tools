shared_examples 'iostat' do
  describe command 'iostat' do
    its(:exit_status) { should eq 0 }
  end
end
