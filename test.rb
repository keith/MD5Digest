#!/usr/bin/env ruby

require 'digest/md5'

# This name must match the one in the sample project
NAME = "Keith Smiley"
PROJECT_NAME = "DigestSample"

Dir.chdir(PROJECT_NAME)
`xcodebuild 2> /dev/null`

Dir.chdir("build/Release")
output = %x["./#{ PROJECT_NAME }"]
output_digest = (output.split('Digest: ')).last

ruby_digest = Digest::MD5.hexdigest(NAME)

if output_digest == ruby_digest
  puts "SUCCESS: The generated digest matches Ruby's digest"
else
  puts "ERROR: The generated digest does not match Ruby's digest"
  exit 1
end

