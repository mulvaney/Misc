#!/usr/bin/env ruby

require 'fileutils'

# Sets up links and what not

system("git submodule init")
system("git submodule update")

emacs_dest = File.expand_path('~/.emacs.d')
if File.exists?(emacs_dest)
  if File.symlink?(emacs_dest)
    puts "~/.emacs.d already linked, skipping"
  else
    puts "Moving ~/emacs.d to .emacs.d.backup"
    FileUtils.move(emacs_dest, File.expand_path('~/.emacs.d.backup'))
  end
else
  File.symlink(File.join(Dir.pwd, 'emacs.d'), emacs_dest)
end


tmux_dest = File.expand_path('~/.tmux.conf')
if File.exists?(tmux_dest)
  puts ".tmux.conf already exists, not linking"
else
  tmux = File.join(Dir.pwd, 'tmux', 'tmux.conf')
  File.symlink(tmux, tmux_dest)
end
