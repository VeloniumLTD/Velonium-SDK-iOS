Pod::Spec.new do |s|
  s.name             = 'VeloniumSDK'
  s.version          = '1.0.0'
  s.summary          = 'Velonium Mobile Advertising SDK for iOS'
  s.description      = <<-DESC
                       The Velonium SDK provides header bidding functionality for mobile apps.
                       This is a repackaged version of VeloniumSDK Mobile SDK customized for Velonium.
                       DESC
  s.homepage         = 'https://velonium.com'
  s.license          = { :type => 'Apache 2.0', :text => 'Copyright 2025 Velonium' }
  s.author           = { 'Velonium' => 'support@velonium.com' }
  s.source           = { :git => 'https://github.com/VeloniumLTD/Velonium-SDK-iOS.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'
  s.swift_version = '5.0'

  # BINARY DISTRIBUTION - No source code exposed
  # Use vendored_frameworks for .framework files
  # OR use vendored_libraries for .a static library files
  
  # BINARY DISTRIBUTION - Use pre-built xcframework
  # This includes both device and simulator architectures
  s.vendored_frameworks = 'VeloniumSDK.xcframework', 'libs/OMSDK-Static_Prebidorg.xcframework'
    
  # Framework settings
  s.frameworks = 'CoreTelephony', 'SystemConfiguration', 'UIKit', 'Foundation', 'AVFoundation', 'CoreGraphics', 'CoreMedia', 'CoreLocation', 'AdSupport', 'WebKit'
  s.weak_frameworks = 'EventKit', 'EventKitUI', 'WatchConnectivity', 'AdSupport'
  
  # Build settings
  s.xcconfig = {
    'OTHER_LDFLAGS' => '-ObjC',
    'ENABLE_BITCODE' => 'NO'
  }
  
  # Module
  s.module_name = 'VeloniumSDK'
  
  # Pod target settings
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
  }
  
  # User target settings
  s.user_target_xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(PROJECT_DIR)/Frameworks $(PROJECT_DIR)/Frameworks/**',
    'HEADER_SEARCH_PATHS' => '$(inherited) $(PROJECT_DIR)/Frameworks/**'
  }
end

