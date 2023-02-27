Gem::Specification.new do |specification|
  specification.authors = ['Shkumbin Delija']
  specification.files = Dir['lib/**/*.rb']
  specification.name = 'just_the_gem'
  specification.summary = 'This creates a bare bones ruby gem'
  specification.version = '0.10.1'
  specification.executables << 'just_the_gem'
  specification.homepage = 'https://github.com/ShkumbinDelija/just_the_gem'
  specification.metadata = { 'source_code_uri' => 'https://github.com/ShkumbinDelija/just_the_gem' }
  specification.license = 'MIT'
  specification.required_ruby_version = '>= 3.1.2'
end
