# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'PDFViewer' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for PDFViewer
pod 'ReadiumShared', podspec: 'https://raw.githubusercontent.com/readium/swift-toolkit/3.0.0-alpha.3/Support/CocoaPods/ReadiumShared.podspec'
pod 'ReadiumStreamer', podspec: 'https://raw.githubusercontent.com/readium/swift-toolkit/3.0.0-alpha.3/Support/CocoaPods/ReadiumStreamer.podspec'
pod 'ReadiumNavigator', podspec: 'https://raw.githubusercontent.com/readium/swift-toolkit/3.0.0-alpha.3/Support/CocoaPods/ReadiumNavigator.podspec'
pod 'ReadiumAdapterGCDWebServer', podspec: 'https://raw.githubusercontent.com/readium/swift-toolkit/3.0.0-alpha.3/Support/CocoaPods/ReadiumAdapterGCDWebServer.podspec'
pod 'ReadiumOPDS', podspec: 'https://raw.githubusercontent.com/readium/swift-toolkit/3.0.0-alpha.3/Support/CocoaPods/ReadiumOPDS.podspec'
pod 'ReadiumLCP', podspec: 'https://raw.githubusercontent.com/readium/swift-toolkit/3.0.0-alpha.3/Support/CocoaPods/ReadiumLCP.podspec'
pod 'ReadiumInternal', podspec: 'https://raw.githubusercontent.com/readium/swift-toolkit/3.0.0-alpha.3/Support/CocoaPods/ReadiumInternal.podspec'

# Required for R2Streamer and ReadiumAdapterGCDWebServer.
pod 'ReadiumGCDWebServer', podspec: 'https://raw.githubusercontent.com/readium/GCDWebServer/4.0.0/GCDWebServer.podspec'

pod 'GRDB.swift', '~> 6.0'
pod 'Kingfisher', '~> 5.0'
pod 'MBProgressHUD', '~> 1.0'
pod 'SwiftSoup', '~> 2.0'

  target 'PDFViewerTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'PDFViewerUITests' do
    # Pods for testing
  end

end
