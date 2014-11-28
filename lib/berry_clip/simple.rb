require 'berry_clip/pins'
require 'berry_clip/clip'
require 'berry_clip/signals'
require 'berry_clip/switch'

module BerryClip
  module Simple
    include Pins

    CLIP = Clip.new
    SIG = Signals.new CLIP
    SW = Switch.new CLIP
  end
end
