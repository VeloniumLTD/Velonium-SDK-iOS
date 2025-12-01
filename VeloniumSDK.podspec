Pod::Spec.new do |s|
  s.name             = 'VeloniumSDK'
  s.version          = '1.0.4'
  s.summary          = 'VeloniumSDK - Mobile Advertising SDK'
  s.description      = <<-DESC
    VeloniumSDK is a comprehensive mobile advertising SDK that supports various ad formats
    including banner, interstitial, rewarded, and native ads. Uses pre-built XCFramework.
  DESC
  
  s.homepage         = 'https://github.com/VeloniumLTD/Velonium-SDK-iOS'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Velonium' => 'support@velonium.com' }
  s.source           = { :git => 'https://github.com/VeloniumLTD/Velonium-SDK-iOS.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '15.6'
  s.swift_version = '5.0'

  # 🚨 MAKE IT STATIC
  s.static_framework = true

  # XCFramework
  s.vendored_frameworks = 'VeloniumSDK.xcframework'
    
  s.frameworks = [
    'CoreTelephony',
    'SystemConfiguration',
    'UIKit',
    'Foundation',
    'AVFoundation',
    'CoreGraphics',
    'CoreLocation',
    'CoreMedia',
    'CoreMotion',
    'MediaPlayer',
    'QuartzCore',
    'WebKit'
  ]
  
  s.weak_frameworks = [
    'AdSupport',
    'StoreKit',
    'AppTrackingTransparency'
  ]
  
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'VALID_ARCHS' => 'arm64 x86_64',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386',
    'OTHER_LDFLAGS' => '-ObjC',
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
    'ENABLE_BITCODE' => 'NO'
  }
  
  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
  }
end
