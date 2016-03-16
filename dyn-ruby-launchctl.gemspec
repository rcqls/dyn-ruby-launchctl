require 'rubygems/package_task'

pkg_name='dyn-ruby-launchctl'
pkg_version='0.1.0'

pkg_files=FileList[
    'bin/*',
    "README.md"
]

spec = Gem::Specification.new do |s|
    s.platform = Gem::Platform::RUBY
    s.summary = "dyn-srv and dyntask daemon"
    s.name = pkg_name
    s.version = pkg_version
    s.licenses = ['MIT', 'GPL-2']
    s.requirements << 'none'
    s.files = pkg_files.to_a
    s.bindir = "bin"
    s.executables = ["dyn-daemon"]
    s.description = <<-EOF
  Managing dyn daemon.
  EOF
    s.author = "CQLS"
    s.email= "rdrouilh@gmail.com"
    s.homepage = "http://rcqls.github.io"
    s.rubyforge_project = nil
end
