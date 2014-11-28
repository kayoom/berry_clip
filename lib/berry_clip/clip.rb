require 'berry_clip/pins'
require 'wiringpi'

module BerryClip
  class Clip
    include Pins

    def initialize
      @gpio = WiringPi::GPIO.new

      LEDS.each do |led|
        @gpio.mode led, OUTPUT
      end

      @gpio.mode BUZZ, OUTPUT
      @gpio.mode SWITCH, INPUT
    end

    def on i
      @gpio.write i, ON
    end

    def off i
      @gpio.write i, OFF
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

    def switch?
      @gpio.readAll[SWITCH] == 1
    end
  end
end
