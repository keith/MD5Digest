Pod::Spec.new do |s|
  s.name         = "MD5Digest"
  s.version      = "1.0.0"
  s.summary      = "An Objective-C NSString category for MD5 hex digests."
  s.homepage     = "https://github.com/Keithbsmiley/MD5Digest"
  s.license      = 'MIT'
  s.author       = { "Keith Smiley" => "keithbsmiley@gmail.com" }
  s.source       = { :git => "https://github.com/Keithbsmiley/MD5Digest.git", :tag => s.version.to_s }
  s.source_files = 'NSString+MD5.{h,m}'
  s.requires_arc = true
  s.platform     = :ios
  s.platform     = :osx
end
