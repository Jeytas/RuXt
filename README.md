# RubyFileCompression
## What is this?

This is a little program I am currently working on that is supposed to make the (de-)compressing of files easier. It will use one set of commands and thus makes it easier to compress or decompress files.

## Usage
### Preamble
Firstly, I would highly recommend setting an alias in your .bashrc in order to be able to use this program more efficiently. Here is an example of an alias that will make "xt" be the same as "ruby extract.rb"
`alias xt="ruby /full/path/to/file/extract.rb`. All commands that follow will be shown with "xt" instead of "ruby extract.rb".

The goal of this program is to have one set of commands for all the common compressed file format. In order to decompress a file, simple type the following
`xt -e FILENAME`. This will extract all the contents of the archive into your current working directory 
