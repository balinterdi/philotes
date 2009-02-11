require 'cucumber/rake/task'

cucumber_options = proc do |t|
  t.binary        = Merb.root / 'bin' / 'cucumber'
end

Cucumber::Rake::Task.new(:features, &cucumber_options)
Cucumber::Rake::FeatureTask.new(:feature, &cucumber_options)
namespace :merb_cucumber do
  task :test_env do
    # the below line (requiring philotes directly) also works
    # require File.join(File.dirname(__FILE__), '..', 'philotes')
    require File.join(File.dirname(__FILE__), '..', '..', 'spec', 'spec_helper.rb')
    Merb.start_environment(:environment => "test", :adapter => 'runner')
  end
end

task :features => 'merb_cucumber:test_env'
task :feature  => 'merb_cucumber:test_env'
