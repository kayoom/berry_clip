# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "berry_clip"
  s.version     = '0.0.1'
  s.platform    = Gem::Platform::RUBY
  s.date        = Time.now.strftime("%Y-%m-%d")
  s.authors     = ["Marian Theisen"]
  s.email       = 'marian.theisen@kayoom.com'
  s.summary     = "Utilities to use the BerryClip GPIO module on a Raspberry PI"
  s.homepage    = "http://github.com/kayoom/berry_clip"
  s.description = "Utilities to use the BerryClip GPIO module on a Raspberry PI, tested with model B+ only."

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "wiringpi"
end

