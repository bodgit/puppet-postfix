source ENV['GEM_SOURCE'] || 'https://rubygems.org'

def location_for(place_or_version, fake_version = nil)
  git_url_regex = %r{\A(?<url>(https?|git)[:@][^#]*)(#(?<branch>.*))?}
  file_url_regex = %r{\Afile:\/\/(?<path>.*)}

  if place_or_version && (git_url = place_or_version.match(git_url_regex))
    [fake_version, { git: git_url[:url], branch: git_url[:branch], require: false }].compact
  elsif place_or_version && (file_url = place_or_version.match(file_url_regex))
    ['>= 0', { path: File.expand_path(file_url[:path]), require: false }]
  else
    [place_or_version, { require: false }]
  end
end

ruby_version_segments = Gem::Version.new(RUBY_VERSION.dup).segments
minor_version = ruby_version_segments[0..1].join('.')

group :development do
  gem "fast_gettext", '1.1.0',                                   require: false if Gem::Version.new(RUBY_VERSION.dup) < Gem::Version.new('2.1.0')
  gem "fast_gettext",                                            require: false if Gem::Version.new(RUBY_VERSION.dup) >= Gem::Version.new('2.1.0')
  gem "json_pure", '<= 2.0.1',                                   require: false if Gem::Version.new(RUBY_VERSION.dup) < Gem::Version.new('2.0.0')
  gem "json", '= 1.8.1',                                         require: false if Gem::Version.new(RUBY_VERSION.dup) == Gem::Version.new('2.1.9')
  gem "json", '= 2.0.4',                                         require: false if Gem::Requirement.create('~> 2.4.2').satisfied_by?(Gem::Version.new(RUBY_VERSION.dup))
  gem "json", '= 2.1.0',                                         require: false if Gem::Requirement.create(['>= 2.5.0', '< 2.7.0']).satisfied_by?(Gem::Version.new(RUBY_VERSION.dup))
  gem "rb-readline", '= 0.5.5',                                  require: false, platforms: [:mswin, :mingw, :x64_mingw]
  gem "puppet-module-posix-default-r#{minor_version}", '~> 0.4', require: false, platforms: [:ruby]
  gem "puppet-module-posix-dev-r#{minor_version}", '~> 0.4',     require: false, platforms: [:ruby]
  gem "puppet-module-win-default-r#{minor_version}", '~> 0.4',   require: false, platforms: [:mswin, :mingw, :x64_mingw]
  gem "puppet-module-win-dev-r#{minor_version}", '~> 0.4',       require: false, platforms: [:mswin, :mingw, :x64_mingw]
  gem "puppet-lint-absolute_classname-check",                    require: false
  gem "puppet-lint-alias-check",                                 require: false
  gem "puppet-lint-empty_string-check",                          require: false
  gem "puppet-lint-file_ensure-check",                           require: false
  gem "puppet-lint-file_source_rights-check",                    require: false
  gem "puppet-lint-fileserver-check",                            require: false, git: 'https://github.com/bodgit/puppet-lint-fileserver-check.git', branch: 'puppet-lint-2.x'
  gem "puppet-lint-leading_zero-check",                          require: false
  gem "puppet-lint-spaceship_operator_without_tag-check",        require: false
  gem "puppet-lint-trailing_comma-check",                        require: false
  gem "puppet-lint-undef_in_function-check",                     require: false
  gem "puppet-lint-unquoted_string-check",                       require: false
  gem "puppet-lint-variable_contains_upcase",                    require: false
  gem "puppet-lint-version_comparison-check",                    require: false
  gem "ruby-augeas",                                             require: false
  gem "github_changelog_generator", '~> 1.15',                   require: false if Gem::Version.new(RUBY_VERSION.dup) >= Gem::Version.new('2.3.0')
  gem "puppet-lint-legacy_facts-check",                          require: false
end
group :system_tests do
  gem "beaker-vagrant",               require: false
  gem "beaker-rspec",                 require: false
  gem "beaker-puppet_install_helper", require: false
  gem "beaker-module_install_helper", require: false
end

puppet_version = ENV['PUPPET_GEM_VERSION']
facter_version = ENV['FACTER_GEM_VERSION']
hiera_version = ENV['HIERA_GEM_VERSION']

gems = {}

gems['puppet'] = location_for(puppet_version)

# If facter or hiera versions have been specified via the environment
# variables

gems['facter'] = location_for(facter_version) if facter_version
gems['hiera'] = location_for(hiera_version) if hiera_version

if Gem.win_platform? && puppet_version =~ %r{^(file:///|git://)}
  # If we're using a Puppet gem on Windows which handles its own win32-xxx gem
  # dependencies (>= 3.5.0), set the maximum versions (see PUP-6445).
  gems['win32-dir'] =      ['<= 0.4.9', require: false]
  gems['win32-eventlog'] = ['<= 0.6.5', require: false]
  gems['win32-process'] =  ['<= 0.7.5', require: false]
  gems['win32-security'] = ['<= 0.2.5', require: false]
  gems['win32-service'] =  ['0.8.8', require: false]
end

gems.each do |gem_name, gem_params|
  gem gem_name, *gem_params
end

# Evaluate Gemfile.local and ~/.gemfile if they exist
extra_gemfiles = [
  "#{__FILE__}.local",
  File.join(Dir.home, '.gemfile'),
]

extra_gemfiles.each do |gemfile|
  if File.file?(gemfile) && File.readable?(gemfile)
    eval(File.read(gemfile), binding)
  end
end
# vim: syntax=ruby