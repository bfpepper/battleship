require 'rake/testtask'
require 'rspec/core/rake_task'

Rake::TestTask.new do |t|
 t.pattern = "test/**/*_test.rb"
 t.warning = false
end

RSpec::Core::RakeTask.new(:spec)

task default: :test
