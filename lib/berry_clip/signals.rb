require 'berry_clip/pins'

module BerryClip
  class Signals
    include Pins

    def initialize berry_clip, interval = 0.05
      @berry_clip = berry_clip
      @interval = interval
      all_off
    end

    def all_off
      LEDS.each do |led|
        off led
      end
      off BUZZ
    end

    def on pin
      @berry_clip.on pin
    end

    def off pin
      @berry_clip.off pin
    end

    def scan_ok
      signal G1: '---', G2: '---'
    end

    def signal patterns
      n = patterns.values.map(&:length).max

      n.times do |i|
        patterns.each do |pin, pattern|
          val = pattern[i]
          if val == "-"
            on pin
          else
            off pin
          end
        end
        sleep @interval
      end
      patterns.keys.each do |pin|
        off pin
      end
    end
  end
end
