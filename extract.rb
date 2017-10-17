#This is a small Ruby script that can be used to extract or compress an archive
#It can be used in the command line by appending the flags listed below (i.e. extract.rb --extract test.tar)
#When compressing a file you need three arguments, --type TYPE --name NAME --compress FILENAME
#I recommend setting an alias to this .rb file in your .bashrc so it can be run without much hassle

require 'optparse'

options = {}
OptionParser.new do |opt|
  opt.on('--extract FILENAME', '-e FILENAME') { |o| options[:filename], options[:cmd] = o, "ext" } #-e FILENAME will extract a given archive
  opt.on('--compress FILENAME', '-c FILENAME') { |o| options[:filename], options[:cmd] = o, "cps" } #-c FILENAME will compress a given file / folder
  opt.on('--type TYPE', '-t TYPE') { |o| options[:type_compress] = o } #Type of format that should be used to compress a given file
  opt.on('--name NAME', "-n NAME") { |o| options[:name_save] = o } #Name the newly created archive should have
	opt.on('--direcotory DIR', '-d DIR') { |o| options[:directory] = o } #Directory a given archive should extract into
  opt.on('--help', '-h') { puts "#{opt}\n To compress a file, you need three arguments: --type TYPE (the type of archive you want to create, i.e. tar) --name NAME (the name the archive should have) --compress FILENAME (the files or directory to compress)" }
end.parse!

filetype = options[:filename].partition(".").last

case options[:cmd]
when "ext"
	case filetype
		when "tar"
			if options[:directory] == nil then system("tar -xfv #{options[:filename]}") else system("tar -xfv #{options[:filename]} -C #{options[:directory]}") end
    when "tar.gz"
      if options[:directory] == nil then system("tar -xvzf #{options[:filename]}") else system("tar -xvzf #{options[:filename]} -C #{options[:directory]}") end
		when "zip"
			if options[:directory] == nil then system("unzip #{options[:filename]}") else system("unzip #{options[:filename]} -d #{options[:directory]}") end
		when "rar"
			if options[:directory] == nil then system("unrar e #{options[:filename]}") else system("unrar e #{options[:filename]} #{options[:directory]}") end
		when "7z"
			if options[:directory] == nil then system("7z x #{options[:filename]}") else system("7z x #{options[:filename]} -o #{options[:directory]}") end
	end
when "cps"
	case options[:type_compress]
		when "tar" || "tar.gz"
			system("tar -zcvf #{options[:name_save]}.tar.gz #{options[:filename]}")
		when "zip"
			system("zip -r9 #{options[:name_save]}.zip #{options[:filename]}")
	end
end
