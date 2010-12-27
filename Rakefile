require 'rake'

require File.expand_path('../lib/veritas/sql/compiler/version', __FILE__)

begin
  gem('jeweler', '~> 1.4.0') if respond_to?(:gem, true)
  require 'jeweler'

  Jeweler::Tasks.new do |gem|
    gem.name        = 'veritas-sql-compiler'
    gem.summary     = 'Ruby Relational Algebra to SQL'
    gem.description = 'Generate SQL from a veritas relation'
    gem.email       = 'dan.kubb@gmail.com'
    gem.homepage    = 'https://github.com/dkubb/veritas-sql-compiler'
    gem.authors     = [ 'Dan Kubb' ]
    gem.has_rdoc    = 'yard'

    gem.version = Veritas::SQL::Compiler::VERSION

    gem.add_dependency             'veritas',   gem.version
    gem.add_development_dependency 'rake',      '~> 0.8.7'
    gem.add_development_dependency 'rspec',     '~> 1.3.1'
    gem.add_development_dependency 'jeweler',   '~> 1.4.0'
    gem.add_development_dependency 'backports', '~> 1.18.2'
  end

  Jeweler::GemcutterTasks.new

  FileList['tasks/**/*.rake'].each { |task| import task }
rescue LoadError
  puts 'Jeweler ~> 1.4.0 (or a dependency) not available. Install it with: gem install jeweler'
end