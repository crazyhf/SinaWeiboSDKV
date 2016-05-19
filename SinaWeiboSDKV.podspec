Pod::Spec.new do |s|
  s.name         = 'SinaWeiboSDKV'
  s.version      = '3.1.4'
  s.summary      = '需要用到Sina WeiboSDK的某些特定版本，所以做了个Pod上来，方便自己管理版本'
  s.description  = <<-DESC
                   This pod is used who want to use Sina WeiboSDK for some specified version with podfile.
                   DESC
  s.author       = 'https://github.com/sinaweibosdk'
  s.homepage     = 'https://github.com/sinaweibosdk'
  s.license      = {
      :type => 'LGPL',
      :file => "LICENSE"
  }
  s.platform     = :ios, '6.0'
  s.requires_arc = false

  s.source       = { :git => 'https://github.com/crazyhf/SinaWeiboSDKV.git', :tag => 'v#{spec.version}' }

  s.resources      = "libWeiboSDK/WeiboSDK.bundle"
  s.source_files   = "libWeiboSDK/**/*.h"
  s.preserve_paths = "libWeiboSDK/libWeiboSDK.a"
  
  s.vendored_libraries = 'libWeiboSDK/libWeiboSDK.a'
  s.public_header_files = "libWeiboSDK/**/*.h"
  
  the_frameworks =  [
                      '"UIKit"',
                      '"ImageIO"',
                      '"CoreText"',
                      '"Security"',
                      '"Foundation"',
                      '"QuartzCore"',
                      '"CoreGraphics"',
                      '"CoreTelephony"',
                      '"SystemConfiguration"'
                    ]
  the_ldflags    = '$(inherited) -lz -lsqlite3 -framework ' + the_frameworks.join(' -framework ') + ''

  s.xcconfig = { 'OTHER_LDFLAGS' => the_ldflags }
end
