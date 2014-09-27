Pod::Spec.new do |s|
  s.name     = 'WebPImageSerialization'
  s.version  = '0.0.1'
  s.license  = 'MIT'
  s.summary  = 'Complete WebP Support for iOS, with Functions, NSJSONSerialization-style Class, and (Optional) UIImage Swizzling'
  s.homepage = 'https://github.com/appunite/WebPImageSerialization'
  s.authors  = { 'Mattt Thompson' => 'm@mattt.me' }
  s.source   = { :git => 'https://github.com/appunite/WebPImageSerialization.git', :tag => "0.0.1" }
  s.requires_arc = true

  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.8'

  s.source_files = 'WebPImageSerialization/WebPImageSerialization.{h,m}'
  s.dependency 'libwebp'

end