#
#  Be sure to run `pod spec lint ionicAppOne.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

SSF_APP_FOLDER_PATH = 'platforms/ios'
SSF_APP_NAME = 'MyApp'
SSF_APP_NAME_PATH = "#{SSF_APP_FOLDER_PATH}/#{SSF_APP_NAME}"
SSF_CORDOVA_FILES = 'CordovaLib'
Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "ionicAppOne"
  spec.version      = "0.0.5"
  spec.summary      = "ionicAppOne is one of two ionic apps meant to be used in a proof of concept."

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  spec.description  = "ionicAppOne is just a sample app made with ionic to be integrated in another app."

  spec.homepage     = "http://github.com/freirezinho"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See https://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  spec.license      = "MIT"
  # spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  spec.author             = { "Saulo Freire" => "gbsaulo@gmail.com" }
  
  # Or just: spec.author    = "Saulo Freire"
  # spec.authors            = { "Saulo Freire" => "gbsaulo@gmail.com" }
  # spec.social_media_url   = "https://twitter.com/Saulo Freire"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  spec.platform     = :ios, "11.0"

  #  When using multiple platforms
  # spec.ios.deployment_target = "5.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  spec.source       = { :git => "git@github.com:freirezinho/ionic-sample-app-one.git", :tag => "#{spec.version}" }
  
  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  spec.source_files = "Classes", "#{SSF_APP_NAME_PATH}/Classes/**/*.{h,m,swift}", "#{SSF_APP_NAME_PATH}/*.{h,m,swift}", "#{SSF_APP_NAME_PATH}/**/*.{h,m,swift}",
  spec.exclude_files = "Classes/Exclude"

  # spec.public_header_files = "Classes/**/*.h"
  spec.dependency "Cordova", "5.1.1"

  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"

  spec.resource_bundles = {
    'ionicAppOne' => ["#{SSF_APP_NAME_PATH}/*.{xcassets}", "#{SSF_APP_NAME_PATH}/*.{storyboard,xib}", "#{SSF_APP_NAME_PATH}/**/*.{storyboard,xib}", "#{SSF_APP_FOLDER_PATH}/#{SSF_CORDOVA_FILES}/**/*.{js}"]
  }
  spec.resources = ["#{SSF_APP_NAME_PATH}/*.{xcassets}", "#{SSF_APP_NAME_PATH}/*.{storyboard,xib}", "#{SSF_APP_NAME_PATH}/**/*.{storyboard,xib}", "#{SSF_APP_FOLDER_PATH}/#{SSF_CORDOVA_FILES}/**/*.{js}"]


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # spec.requires_arc = true
  spec.xcconfig = { 
    'OTHER_LDFLAGS' => '-lsqlite3',
    'HEADER_SEARCH_PATHS' => "$(OBJROOT)/UninstalledProducts/$(PLATFORM_NAME)/include" + '"${PODS_ROOT}/platforms/ios/CordovaLib/Classes/Public/"' + '"${PODS_ROOT}/platforms/ios/CordovaLib/Classes/Private/"' + '"${PODS_ROOT}/platforms/ios/CordovaLib/Classes/Private/Plugins/"',
  }
  spec.preserve_paths = "#{SSF_APP_FOLDER_PATH}/#{SSF_CORDOVA_FILES}/Classes/**/*.{pch,h}", "#{SSF_APP_FOLDER_PATH}/#{SSF_CORDOVA_FILES}/**"

  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end
