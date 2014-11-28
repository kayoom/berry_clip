require 'berry_clip/pins'
require 'berry_clip/mock_clip'
require 'berry_clip/signals'
require 'berry_clip/switch'

module BerryClip
  module MockSimple
    include Pins

    CLIP = MockClip.new
    SIG = Signals.new CLIP
    SW = Switch.new CLIP
  end
end
