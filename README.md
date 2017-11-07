# RuXt - A Ruby Extractor (and more)
## What is this?
This is a little program I am currently working on that is supposed to make the (de-)compressing of files easier. It will use one set of commands and thus makes it easier to compress or decompress files.

## Installer
This program can be easily installed using the installer available here [Installer](https://raw.githubusercontent.com/Jeytas/Installers/master/installer.sh) (Please note that you will need to have the `git` package installed on your operating system). It will clone the repository into `~/.ruxt` and automatically set an alias for you in your .bashrc (if you do not use bash, the installer won't work properly). It will add the alias to the last line of the .bashrc and you will then be able to easily access the terminal version of RuXt by just typing 'xt' instead of a lengthy path to the ruby file.

### Updating RuXt
You need to manually update your RuXt, however an alias for updating it has also been set. Simply run "updatext" anywhere in your terminal and the new version will replace the current one on your computer.

## Usage
### Preamble
Please check whether the installation has finished correctly by typing `xt -h`. If you get some help regarding the program, then everything worked correctly.Please check whether the installation has finished correctly by typing `xt -h`. If you get some help regarding the program, then everything worked correctly.

### Prerequisites
This program uses your command line to do the work. It is basically a lot of shortcuts. If you want to be able to extract everything, you also need to install all the needed packages on your Linux machine, which are as follows:
+ ~~"unzip" and "zip"~~ (No longer needed)
+ "7z" (7zip)
+ "tar"
+ "unrar"

I am working on getting rid of the platform specific extraction methods and trying to implement native Ruby support (please refer to TODO.org)

### Usage notes
The goal of this program is to have one set of commands for all the common compressed file format, which means that you will only need to remember one set of commands to be able to (de)compress virtually any file. Should you need some quick overview of all the commands and some help, please use the `-h` flag (`xt -h`)

#### Extract / Decompress
In order to decompress a file, simple type the following
`xt -e FILENAME`. This will extract all the contents of the archive into your current working directory (currently supported file formats are tar, zip, rar and 7z for decompression). If you want to extract the file into a specific folder, you can use the `-d` flag as follows:
`xt -e FILENAME -d FOLDER`

#### Compress
Compressing a file is a little more complex, but still pretty straightforward (the way compressing works will most likely still change, so please refer back to this Github repository after each update).
An example of compressing a "Test" folder into "Test.zip" is as follows:
`xt -t zip -n Test -c Test`

A short explanation of the flags:
+ `-t` is used to specify the type of format you want to use for compressing the files / folders (currently only tar and zip)
+ `-n` specifies the name the archive should have (don't add any file endings)
+ `-c` is the flag that indicates that the following file should be compressed and not extracted (`-e`)

### GUI (0.0.1)
I have started working on a GUI that is neither good-looking nor very functional at the moment. However, you can try it out and I also added a screenshot of the program
<img src="https://picload.org/image/drgcpoli/2017-10-26-162453_602x401_scro.png"></img>
If you want to use the GUI, you will need to install Shoes. I am using Shoes4, so please refer to the installation guides for that. Older Shoes versions might also work, but I haven't tested that myself.

### TODO
(For a complete to-do list please refer to the TODO.org file as I update it frequently and I won't have to edit the README everytime I add something)
