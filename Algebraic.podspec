Pod::Spec.new do |s|
  s.name         = "Algebraic"
  s.version      = "0.2.3"
  s.summary      = "Abstract algebra utilities"
  s.description  = <<-DESC
    Semigroup, Monoid, etc
  DESC
  s.homepage     = "https://github.com/buscarini/algebraic"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "José Manuel Sánchez" => "buscarini@gmail.com" }
  s.social_media_url   = ""
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"
  s.watchos.deployment_target = "2.0"
  s.tvos.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/buscarini/algebraic.git", :tag => s.version.to_s }
  s.source_files  = "Sources/**/*"
  s.frameworks  = "Foundation"
end
