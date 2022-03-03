
Pod::Spec.new do |s|
	s.name = 'LDExtension'
    s.version = '0.1.0'
	s.license      = { :type => "MIT", :file => "LICENSE" }
	s.summary = 'A tools for develop iOS apps.'
	s.homepage = 'https://github.com/alexiiio/LDExtension'
	s.author = { 'AleXiiio' => '450145524@qq.com' }
	s.source = { :git => "https://github.com/alexiiio/LDExtension.git", :tag => "v0.1.0"}
	s.requires_arc = true
	s.platform     = :ios, "9.0"
	s.source_files = 'LDExtension-master/LDExtension/**/*.{h,m}'
	s.frameworks = 'UIKit'
	s.frameworks = 'CoreServices'
end
