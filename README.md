# RuXt - A Ruby Extractor (and more)
## What is this?
This is a little program I am currently working on that is supposed to make the (de-)compressing of files easier. It will use one set of commands and thus makes it easier to compress or decompress files.

## Usage
### Preamble
Firstly, I would highly recommend setting an alias in your .bashrc in order to be able to use this program more efficiently. Here is an example of an alias that will make "xt" be the same as "ruby extract.rb"
`alias xt="ruby /full/path/to/file/extract.rb`. All commands that follow will be shown with "xt" instead of "ruby extract.rb".

### Prerequisites
This program uses your command line to do the work. It is basically a lot of shortcuts. If you want to be able to extract everything, you also need to install all the needed packages on your Linux machine, which are as follows:
+ "unzip" and "zip"
+ "7z" (7zip)
+ "tar"
+ "unrar"

### Usage notes
The goal of this program is to have one set of commands for all the common compressed file format, which means that you will only need to remember one set of commands to be able to (de)compress virtually any file. Should you need some quick overview of all the commands and some help, please use the `-h` flag (`xt -h`)

### Extract / Decompress
In order to decompress a file, simple type the following
`xt -e FILENAME`. This will extract all the contents of the archive into your current working directory (currently supported file formats are tar, zip, rar and 7z for decompression). If you want to extract the file into a specific folder, you can use the `-d` flag as follows:
`xt -e FILENAME -d FOLDER`

### Compress
Compressing a file is a little more complex, but still pretty straightforward (the way compressing works will most likely still change, so please refer back to this Github repository after each update).
An example of compressing a "Test" folder into "Test.zip" is as follows:
`xt -t zip -n Test -c Test`

A short explanation of the flags:
+ `-t` is used to specify the type of format you want to use for compressing the files / folders (currently only tar and zip)
+ `n` specifies the name the archive should have (don't add any file endings)
+ `c` is the flag that indicates that the following file should be compressed and not extracted (`e`)
