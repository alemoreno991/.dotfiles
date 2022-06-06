# Dotfiles

## Motivation

In UNIX world, most programs are configured through command line and they keep 
their configuration in plain-text hidden files located in homedir `$HOME` 
(usually the filename starts with a `.`. Thus, the name dotfiles). 

A good idea is to have your `dotfiles` under version control. That way you can 
go back to previous settings and syncing your configurations when working on 
multiple systems. In that sense, a common practice is to use symbolic links 
between the local `~/dotfiles` and your version controlled `dotfiles`. This 
brings several benefits. There is no possibility of accidentally deleting your 
files. It is possible to track configuration files that belong somewhere other 
than `$HOME`. Installing dotfiles on new machines is easier. All that is 
required is cloning your `dotfiles` followed by copying or linking files. 

## Installing 

Dotfiles uses [dotbot](https://github.com/anishathalye/dotbot) for installation.

To install the `dotfiles` just run the following snippet of code.

```
cd ~    # It can be placed somewhere else but $HOME is the default location usually
git clone https://github.com/alemoreno991/.dotfiles.git
cd .dotfiles
./install
```

**Note:** the install script can safely be run multiple times.

## References 

[CSAIL-MIT video lecture](https://www.youtube.com/watch?v=YSZBWWJw3mI)
[GitHub unofficial tutorial on dotfiles](http://dotfiles.github.io/tutorials/)T