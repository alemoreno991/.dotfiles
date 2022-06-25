# Dotfiles

## Motivation

In UNIX world, most programs are configured through command line and they keep 
their configuration in plain-text hidden files located in homedir `$HOME` 
(usually the filename starts with a `.`. Thus, the name dotfiles). 

A good idea is to have your `dotfiles` under version control. That way you can 
go back to previous settings and syncing your configurations when working on 
multiple systems. In that sense, a common practice is to use symbolic links 
between the local `dotfiles` and your version controlled `dotfiles`. This 
brings several benefits. There is no possibility of accidentally deleting your 
files. It is possible to track configuration files that belong somewhere other 
than `$HOME`. Installing dotfiles on new machines is easier. All that is 
required is cloning your `dotfiles` followed by copying or linking files. 

## Installing 

As right now, I'm not implementing a robust install system. 

I'm looking into it...
The best option, for its simplicity, seems to be `stow`.

## Workflow

The most important parts of my workflow are without a doubt the 
`terminal emulator`, `shell`, `text editor`. This is because I spend most of my 
time in them. Therefore, I'd like them to be as custom to my personal preferences 
as possible. That means, they should help me get my shit done instead of being 
a cause of trouble. Also, they should be nice to look at because, let's face it,
it's gonna make you want to spend time using a program that looks cool.

The way I solved the above mentioned is by using the following setup:

- **Terminal emulator:** Alacritty
- **Shell:** [zsh](zsh/README.md)
- **Text editor:** LunarVim

## References 

[CSAIL-MIT video lecture](https://www.youtube.com/watch?v=YSZBWWJw3mI)
[GitHub unofficial tutorial on dotfiles](http://dotfiles.github.io/tutorials/)
