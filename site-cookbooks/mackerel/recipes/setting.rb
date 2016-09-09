template '/etc/mackerel-agent/mackerel-agent.conf' do
  variables(
    apikey: node['mackerel']['apikey']
  )
  notifies :restart, 'service[mackerel-agent]'
end

service 'mackerel-agent' do
  action [:start]
  supports restart: true
end
