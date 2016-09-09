require 'rspec/core/rake_task'
require 'yaml'

class ServerspecTask < RSpec::Core::RakeTask
  attr_accessor :target

  def spec_command
    cmd = super
    "env TARGET_HOST=#{target} #{cmd}"
  end
end

namespace :spec do
  hosts_yml = File.join(__dir__, '../config/hosts.yml')
  hosts = YAML.load(open(hosts_yml))

  desc "Run serverspec to all hosts"
  task :all => hosts.map {|h| 'spec:' + h[:short_name] }
  hosts.each do |host|
    desc "Run serverspec to #{host[:name]}"
    ServerspecTask.new(host[:short_name].to_sym) do |t|
      t.target = host[:name]
      t.pattern = "spec/roles/#{host[:role]}_spec.rb"
    end
  end
end
