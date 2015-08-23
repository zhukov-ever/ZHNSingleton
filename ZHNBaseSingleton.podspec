Pod::Spec.new do |s|
  s.name                      = "ZHNBaseSingleton"
  s.version                   = "0.0.2"
  s.summary                   = "Singleton with one line implementation."
  s.homepage                  = "https://github.com/zhukov-ever/ZHNBaseSingleton"
  s.license                   = { :type => "MIT", :file => "LICENSE" }
  s.author                    = { "Zhn" => "zhukov.ever@gmail.com" }
  s.platform                  = :ios, '7.0'
  s.source                    = { :git => "https://github.com/zhukov-ever/ZHNBaseSingleton.git", :tag => s.version.to_s }
  s.source_files              = "Classes", "Classes/**/*.{h,m}"
  s.public_header_files       = "Classes/**/*.h"
  s.framework                 = "Foundation"
  s.requires_arc              = true
end
