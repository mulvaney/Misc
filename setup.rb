#!/usr/bin/env ruby

require 'fileutils'

# Sets up links and what not

system("git submodule init")
system("git submodule update")

emacs_dest = File.expand_path('~/.emacs.d')
if File.exists?(emacs_dest)
  puts "Moving ~/emacs.d to .emacs.d.backup"
  FileUtils.move(emacs_dest, File.expand_path('~/.emacs.d.backup'))
end

File.symlink('emacs.d', emacs_dest)

tmux_dest = File.expand_path('~/.tmux.conf')
if File.exists?(tmux_dest)
  puts ".tmux.conf already exists, not linking"
else
  File.symlink('tmux/tmux.conf', tmux_dest)
end
