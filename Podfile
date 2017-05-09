source 'https://github.com/CocoaPods/Specs.git'

platform :ios,'8.0'

#cocoapods使用framework模式，意思就是.a的静态库不支持使用cocoapods管理，在包含swift的项目中，需要使用这样的模式，因为swift不支持静态库，(原因：静态库在编译的时候就打包加入到项目的二进制中，但是目前的iPhone设备中还没有支持对swift的解析，所以不能载静态库中编写swift代码，动态库则可以，因为项目使用swift后会在项目中添加swift解析的动态库到工程中，也就是如此所以使用swift的项目打包出来的ipa体积会变大)
use_frameworks!
inhibit_all_warnings!

target 'HDFrameworkBMKDemo' do
    pod 'HDFrameworkBMKSDK', :path => '/Users/denglibing/Desktop/HDFrameworkBMKSDK/'
    #pod 'HDFrameworkBMKSDK', :git => 'https://github.com/erduoniba/HDFrameworkBMKSDK.git'
end

#百度地图SDK现在使用的7个framework，为了支持ssl所以还添加了两个.a的静态库，这个时候需要使用如下命令来让cocoapods对静态库支持
pre_install do |installer|
    # workaround for https://github.com/CocoaPods/CocoaPods/issues/3289
    def installer.verify_no_static_framework_transitive_dependencies; end
end
