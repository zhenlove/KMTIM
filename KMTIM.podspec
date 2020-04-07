#
# Be sure to run `pod lib lint KMTIM.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KMTIM'
  s.version          = '0.1.0'
  s.summary          = 'A short description of KMTIM.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/zhenlove/KMTIM'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
#  s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.license      = { :type => 'Proprietary',
  :text => <<-LICENSE
#    copyright 2017 tencent Ltd. All rights reserved.
    针对TIM封装
  LICENSE
 }
  s.author           = { 'zhenlove' => '121910347@qq.com' }

  s.ios.deployment_target = '8.0'
  s.xcconfig     = { 'VALID_ARCHS' => 'armv7 arm64 x86_64', }
  s.libraries    = 'stdc++'
  s.dependency 'MMLayout','0.2.0'
  s.dependency 'SDWebImage'
  s.dependency 'TXIMSDK_iOS'
  s.dependency 'ReactiveObjC','3.1.1'
  s.dependency 'Toast','4.0.0'
  s.dependency 'ISVImageScrollView','0.1.2'
  s.requires_arc = true
  s.source = { :http => 'https://imsdk-1252463788.cos.ap-guangzhou.myqcloud.com/4.6.100/TIM_SDK_TUIKIT_iOS_latest_framework.zip'}
  s.source_files = '**/TUIKit/Classes/**/*.{h,m,mm}'
  s.private_header_files = '**/TUIKit/Classes/third/**/*.{h}'
  s.vendored_libraries = ['**/TUIKit/Classes/third/voiceConvert/opencore-amrnb/libopencore-amrnb.a', '**/TUIKit/Classes/third/voiceConvert/opencore-amrwb/libopencore-amrwb.a']
  s.resource = ['**/TUIKit/Resources/TUIKitFace.bundle','**/TUIKit/Resources/TUIKitResource.bundle']
end
