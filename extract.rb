#This is a small Ruby script that can be used to extract or compress an archive
#It can be used in the command line by appending the flags listed below (i.e. extract.rb --extract test.tar)
#When compressing a file you need three arguments, --type TYPE --name NAME --compress FILENAME
#I recommend setting an alias to this .rb file in your .bashrc so it can be run without much hassle

require 'optparse'

options = {}
OptionParser.new do |opt|
  opt.on('--extract FILENAME', '-e FILENAME') { |o| options[:filename], options[:cmd] = o, "ext" }
  opt.on('--compress FILENAME', '-c FILENAME') { |o| options[:filename], options[:cmd] = o, "cps" }
  opt.on('--type TYPE', '-t TYPE') { |o| options[:type_compress] = o }
  opt.on('--name NAME', "-n NAME") { |o| options[:name_save] = o }
  opt.on('--help', '-h') { puts "#{opt}\n To compress a file, you need three arguments: --type TYPE (the type of archive you want to create, i.e. tar) --name NAME (the name the archive should have) --compress FILENAME (the files or directory to compress)" }
end.parse!

filetype = options[:filename].partition(".").last

case options[:cmd]
when "ext"
	case filetype
		when "tar" || "tar.gz" || "tgz"
			system("tar -xfv #{options[:filename]}")
		when "zip"
			system("unzip #{options[:filename]}")
		when "rar"
			system("unrar #{options[:filename]}")
		when "7z" 
			system("7z x #{options[:filename]}")
	end 
when "cps"
	case options[:type_compress]
		when "tar" || "tar.gz"
			system("tar -zcvf #{options[:name_save]}.tar.gz #{options[:filename]}")
		when "zip"
			system("zip -r9 #{options[:name_save]}.zip #{options[:filename]}")
	end
end
