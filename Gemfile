source 'https://rubygems.org'

# Specify your gem's dependencies in vagrant-upp.gemspec
gemspec

group 'development' do
  gem 'vagrant', git: 'https://github.com/mitchellh/vagrant.git'
  gem 'rubocop'
end

group :plugins do
  gem 'vagrant-upp', path: '.'
  gem 'sahara'
end
