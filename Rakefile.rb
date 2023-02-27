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