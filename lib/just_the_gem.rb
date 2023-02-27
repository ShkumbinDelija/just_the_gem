module JustTheGem
  module_function

  def create(gem_name:)
    abort 'Please specify the gem name' if gem_name.empty?

    create_dirs(gem_name:)
    create_files(gem_name:)
    write_gem_spec(gem_name:)
    write_rakefile
  end

  def create_dirs(gem_name:)
    Dir.mkdir(gem_name)
    Dir.mkdir("#{gem_name}/lib")
    Dir.mkdir("#{gem_name}/test")
  end

  def create_files(gem_name:)
    Dir.chdir(gem_name)
    File.new("lib/#{gem_name}.rb", 'w')
    File.new("test/test_#{gem_name}.rb", 'w')
  end

  def write_gem_spec(gem_name:)
    IO.write("#{gem_name}.gemspec", gem_spec_contents(gem_name:))
  end

  def gem_spec_contents(gem_name:)
    <<~RUBY
Gem::Specification.new do |specification|
  specification.authors = ['Your name here', 'Shkumbin Delija']
  specification.files = Dir['lib/**/*.rb']
  specification.name = '#{gem_name}'
  specification.summary = 'This gem does #{gem_name}'
  specification.version = '0.0.1'
  # specification.homepage = 'https://github.com/ShkumbinDelija/just_the_gem'
  # specification.metadata = { 'source_code_uri' => 'https://github.com/ShkumbinDelija/just_the_gem' }
end
    RUBY
  end

  def write_rakefile
    IO.write('Rakefile.rb', rakefile_contents)
  end

  def rakefile_contents
    <<~'END'
task default: %w[build push]

task :build do
  sh "gem build #{gemspec}"
end

task :push do
  sh "gem push #{gem_build}"
  puts "Visit your new gem at: https://rubygems.org/gems/#{gem_name}" if $?.success?
end

def gemspec
  @gemspec ||= Dir['*.gemspec'].first
end

def gem_name
  gemspec.split('.gemspec').first
end

def gem_build
  Dir['*.gem'].sort.last
end
    END
  end
end

