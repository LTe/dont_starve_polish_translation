require 'fileutils'
require './lib/converter'

desc "Create release"
task :release do
  puts "Converting file to readable by Don't Starve..."
  result = Converter.export(File.open("./src/polski.po", "r").read)

  puts "Copy files..."
  FileUtils.cp_r("./src/.", "./dist")

  puts "Replace translation file..."
  file = File.open("./dist/polski.po", "w")
  file.write(result)
  file.close
end

desc "Copy release to mods directory"
task distribute: :release do
  puts "Copy files to mods directory..."
  raise "You need to set ENV['MODS_DIRECTORY']" unless ENV["MODS_DIRECTORY"]
  FileUtils.rm_rf("#{ENV['MODS_DIRECTORY']}/polish")
  FileUtils.cp_r("./dist", "#{ENV['MODS_DIRECTORY']}/polish")
end

