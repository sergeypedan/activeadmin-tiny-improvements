require "bundler/setup"
require "bundler/gem_tasks"
require "rspec/core/rake_task"
require "term/ansicolor"

require "./lib/activeadmin/tiny_improvements"

RSpec::Core::RakeTask.new(:spec)

# APP_RAKEFILE = File.expand_path("test/dummy/Rakefile", __dir__)
# load "rails/tasks/engine.rake"
load "rails/tasks/statistics.rake"

task default: :spec

desc "Dumps output to a CSS file for testing"
task :debug do
	require "sassc"
	require "rails"

	path = Activeadmin::TinyImprovements.stylesheets_path
	entrypoins = %w(_activeadmin-tiny-improvements)

	entrypoins.each do |file|
		css = File.read("#{path}/#{file}.sass")
		engine = SassC::Engine.new(css, syntax: :sass, load_paths: [path])
		out = File.join("tmp", "#{file[1..-1]}.css")
		css = engine.render
		File.open(out, "w+") do |f|
			f << css
		end
		$stderr.puts Term::ANSIColor.green "Compiled #{out}"
		$stderr.puts css
	end
end

# desc "Publish"
# task :publish do
# 	puts `gem push pkg/activeadmin_tiny_improvements-#{Activeadmin::TinyImprovements::VERSION}.gem`
# end

# desc 'Start a dummy Rails app server'
# task :rails_server do
#   require 'rack'
#   require 'term/ansicolor'
#   port = ENV['PORT'] || 9292
#   puts %Q(Starting on #{Term::ANSIColor.cyan "http://localhost:#{port}"})
#   Rack::Server.start(
#     config: 'test/dummy_rails/config.ru',
#     Port: port)
# end
