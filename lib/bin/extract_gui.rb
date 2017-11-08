require 'shoes'
require 'zip'
require_relative 'lib/scripts/extract_zip.rb'

Shoes.app(title: "Ruby Extraction Program RuXt", width: 600, height: 400) do
  background oldlace

  flow width: 0.3, height: 0.2, margin: 10 do
    button "Exit", width: 0.3, height: 0.5 do
      Shoes.quit()
    end

  para "Mode: "
    list_box :items => ["Extract", "Compress"] do |e|
      @cmd = e.text
    end
  end

  stack margin: 10 do
    background lightblue
    subtitle "RuXt (Ruby Extractor)"
    tagline "GUI version 0.0.1"
  end

  flow margin: 10 do
    button "Choose a file" do
      $filename = ask_open_file
      @info.replace "Selected files: #{$filename}"
    end

    button "Execute" do
      if $filename == nil then @info.replace "This cannot be done without having a file selected" end
      case @cmd
      when "Extract"
        directory = File.dirname($filename)
          case File.extname($filename)
            when ".tar"
              system("tar -xfv #{$filename} -C #{directory}")
            when ".gz"
              system("tar -xvzf #{$filename} -C #{directory}")
            when ".zip"
              extract_zip($filename, directory)
            when ".rar"
              system("unrar e #{$filename} #{directory}")
            when ".7z"
              system("7z x #{$filename} -o #{directory}")
            else
              alert("The selected file is a .#{filetype} and cannot be extracted")
              @info.replace "The selected file is a .#{filetype} and cannot be extracted"
          end

      when "Compress"
        #REFER TO TODO
      end
    end
  end

  stack margin: 10 do
    background lightblue
    @info = para "No file selected"
  end
end
