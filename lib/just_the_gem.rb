module JustTheGem
  def create(gem_name:)
    abort 'Please specify the gem name' if gem_name.empty?

    create_dirs(gem_name:)
    create_files(gem_name:)
    write_gem_spec(gem_name:)
  end

  def create_dirs(gem_name:)
    Dir.mkdir(gem_name)
    Dir.mkdir("#{gem_name}/lib")
    Dir.mkdir("#{gem_name}/test")
  end

  def create_files(gem_name:)
    File.create("lib/#{gem_name}.rb")
    File.create("test/test_#{gem_name}.rb")
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
end

