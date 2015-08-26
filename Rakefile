require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

require "bundler/gem_tasks"

task :test do
  system('echo "Just run: ruby -Ilib ./test/test_inline.rb"')
end

task :default => :test
