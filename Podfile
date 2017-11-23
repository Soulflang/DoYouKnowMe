use_frameworks!
project 'DoYouKnowMe.xcodeproj'

target 'DoYouKnowMe' do 
   pod 'IQKeyboardManagerSwift'
   pod 'RealmSwift'
   
   post_install do |installer|
       installer.pods_project.targets.each do |target|
           target.build_configurations.each do |config|
               config.build_settings['SWIFT_VERSION'] = '4.0'
           end
       end
   end
end
