#!/usr/bin/env ruby

require 'digest/md5'

# This name must match the one in the sample project
NAME = "Keith Smiley"
PROJECT_NAME = "DigestSample"

def folder_missing(path)
  puts "#{ path } doesn't exist where it should."
  exit
end

def release_path
  "#{ PROJECT_NAME }/build/Release"
end

if !File.directory? PROJECT_NAME
  folder_missing(PROJECT_NAME)
end

%x[cd "#{ PROJECT_NAME }"; xcodebuild > /dev/null]

if !File.directory? release_path
  folder_missing(release_path)
end

Dir.chdir(release_path)
output = %x["./#{ PROJECT_NAME }"]
output_digest = (output.split('Digest: ')).last

ruby_digest = Digest::MD5.hexdigest(NAME)

if output_digest == ruby_digest
  puts "SUCCESS: The generated digest matches Ruby's digest"
else
  puts "ERROR: The generated digest does not match Ruby's digest"
end

