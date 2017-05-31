
Pod::Spec.new do |s|
  s.name             = 'Algebraic'
  s.version          = '0.1.0'
  s.summary          = 'A short description of Algebraic.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://gitlab.treenovum-servic.es/iOS/Algebraic'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 
    'José Manuel' => 'josema@treenovum.es',
    'Vicente Crespo' => 'vicente.crespo@treenovum.es'
  }
  s.source           = { :git => 'git@gitlab.treenovum-servic.es:iOS/Algebraic.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'Algebraic/Classes/**/*'
  
  # s.dependency 'AFNetworking', '~> 2.3'
  
end
