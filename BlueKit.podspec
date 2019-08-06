Pod::Spec.new do |s|
s.name             = 'BlueKit'
s.version          = '0.1.3'
s.summary          = 'Core'

s.homepage         = 'https://code.branderstudio.com/mobile/bluekit'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Aleksandr Orlov' => 'alexandr.orlov@brander.ua' }
s.source           = { :git => 'https://code.branderstudio.com/mobile/bluekit', :tag => s.version.to_s }

s.ios.deployment_target = '11.0'
s.source_files = 'BlueKit/Source/**/*'

s.dependency 'AnyFormatKit', '1.0.1'
s.dependency 'AUIKit', '0.1.2'
s.dependency 'BTextInputFilter', '0.1.2'
s.dependency 'BTextInputValidator', '0.1.1'
s.dependency 'SnapKit', '4.2.0'

s.swift_version = '4.2'

end
