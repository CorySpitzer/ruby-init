# Creates a basic Ruby project with a lib, spec, and Gemfile

require 'fileutils'

FileUtils.mkdir './' + ARGV[0]
FileUtils.mkdir ARGV[0] + '/lib'
FileUtils.mkdir ARGV[0] + '/spec'

FileUtils.touch ARGV[0] + '/spec/' + ARGV[0] + '_spec.rb'
FileUtils.touch ARGV[0] + '/lib/' + ARGV[0] + '.rb'

# FileUtils.touch ARGV[0] + '/Gemfile'

File.open ARGV[0] + '/Gemfile', 'w' do |file|
    file.write "source 'https://rubygems.org'"
end
# also File.write("log.txt", "data...")

File.write(ARGV[0] + '/lib/' + ARGV[0] + '.rb', "class\n\nend")
File.write(ARGV[0] + '/spec/' + ARGV[0] + '_spec.rb',
           "require 'rspec'\nrequire " + "'" + ARGV[0] + "'")
