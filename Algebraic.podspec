
Pod::Spec.new do |s|
  s.name             = 'Algebraic'
  s.version          = '0.1.0'
  s.summary          = 'A short description of Algebraic.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://github.com/buscarini/Algebraic'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 
    'José Manuel' => 'buscarini@gmail.com'
  }
  s.source           = { :git => 'git@github.com:buscarini/Algebraic.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'

  s.source_files = 'Algebraic/Classes/**/*'

  s.swift_version = '4.0'

end
