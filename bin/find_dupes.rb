#!/usr/bin/env ruby

require 'digest'
require 'find'
require 'pp'

if ARGV.length != 1
  puts "Usage: find_dupes.rb <starting directory>"
  exit 1
end

start_dir = ARGV.shift

files = {}

Find.find(start_dir) do |path|
  next if File.directory?(path)

  digest = Digest::SHA256.new
  sha = digest.file(path).to_s

  # initialize with an empty array
  files[sha] = [] unless files.has_key?(sha)

  files[sha] << path
end

files.each do |sha, paths|
  if paths.size > 1
    print "Duplicates: (#{paths.size})\n * "
    puts paths.join("\n * ")
  end
end
