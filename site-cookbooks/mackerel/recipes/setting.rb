template '/etc/mackerel-agent/mackerel-agent.conf' do
  variables(
    apikey: node['mackerel']['apikey']
  )
  notifies :restart, 'service[mackerel-agent]'
end

service 'mackerel-agent' do
  supports restart: true
end
