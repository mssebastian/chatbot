Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '10.1'
s.name = "chatbot"
s.summary = "chatbot."
s.requires_arc = true

# 2
s.version = "0.1.0"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "[Your Name Goes Here]" => "[Your_Email@Your_Email_Domain.com]" }

# For example,
# s.author = { "Joshua Greene" => "jrg.developer@gmail.com" }


# 5 - Replace this URL with your own Github page's URL (from the address bar)
s.homepage = "https://github.com/mssebastian/chatbot"

# For example,
# s.homepage = "https://github.com/JRG-Developer/RWPickFlavor"


# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/mssebastian/chatbot.git", :tag => "#{s.version}"}

# For example,
# s.source = { :git => "https://github.com/JRG-Developer/RWPickFlavor.git", :tag => "#{s.version}"}


# 7
s.framework = "UIKit"
s.dependency 'Alamofire', '~> 4.0'
s.dependency 'ObjectMapper'
s.dependency 'AlamofireObjectMapper', '~> 4.0'
s.dependency 'NVActivityIndicatorView'
s.dependency 'SnapKit', '~> 3.0'
s.dependency 'Socket.IO-Client-Swift', '~> 8.1.2'

# 8
s.source_files = "ChatBot/**/*.{swift}"

# 9
s.resources = "ChatBot/**/*.{png,jpeg,jpg,storyboard,xib}"
end
