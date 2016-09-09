shared_examples 'iostat' do
  describe package 'iostat' do
    it { should be_installed }
  end
end
