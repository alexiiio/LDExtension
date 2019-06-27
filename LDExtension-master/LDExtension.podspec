
Pod::Spec.new do |s|
s.name = 'LDExtension'
s.version = '0.0.2'
s.license = 'MIT'
s.summary = 'A tools for develop iOS apps.'
s.homepage = 'https://github.com/alexiiio/LDExtension'
s.author = { 'AleXiiio' => '450145524@qq.com' }
s.source = { :git => "https://github.com/alexiiio/LDExtension.git", :tag => "v0.0.2"}
s.requires_arc = true
s.ios.deployment_target = '7.0'
s.source_files = "LDExtension/*"
#s.frameworks = 'UIKit'
end
