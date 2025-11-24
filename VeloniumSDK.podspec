Pod::Spec.new do |s|
  s.name             = 'VeloniumSDK'
  s.version          = '1.0.1'
  s.summary          = 'VeloniumSDK - Mobile Advertising SDK'
  s.description      = <<-DESC
    VeloniumSDK is a comprehensive mobile advertising SDK that supports various ad formats
    including banner, interstitial, rewarded, and native ads. Uses pre-built XCFramework.
  DESC
  
  s.homepage         = 'https://github.com/VeloniumLTD/Velonium-SDK-iOS'  # UPDATE: Your actual GitHub repo URL
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Velonium' => 'support@velonium.com' }  # UPDATE: Your actual author info
  s.source           = { :git => 'https://github.com/VeloniumLTD/Velonium-SDK-iOS.git', :tag => s.version.to_s }  # UPDATE: Your actual Git repo URL
  
  s.ios.deployment_target = '15.6'
  s.swift_version = '5.0'
  

  
  # Use pre-built XCFramework instead of source files
  s.vendored_frameworks = [
    'VeloniumSDK.xcframework',
    'OMSDK-Static_Prebidorg.xcframework'
  ]
  
  # XCFramework is built as static library - must set static_framework = true
  # To prevent duplicates, ensure pod is only added to Unity-iPhone target, not UnityFramework
  s.static_framework = false
    
  # Required frameworks
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
  
  # Compiler settings
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

