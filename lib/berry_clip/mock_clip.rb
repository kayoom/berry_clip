require 'berry_clip/pins'

module BerryClip
  class MockClip
    include Pins

    def on i
      puts "PIN #{i}: ON"
    end

    def off i
      puts "PIN #{i}: OFF"
    end

    def led_on i
      on LEDS[i - 1]
    end

    def led_off i
      off LEDS[i - 1]
    end

    def buzz_on
      on BUZZ
    end

    def buzz_off
      off BUZZ
    end

    attr_accessor :switch
    def switch?
      @switch == 1
    end
  end
end
