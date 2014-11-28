module BerryClip
  class Switch
    def initialize berry_clip
      @berry_clip = berry_clip
    end

    attr_accessor :on_off, :off_on, :on, :off

    def invoke block
      if block
        block[]
      end
    end

    def watch
      @stop = false
      @thread = Thread.new do
        prev_state = @berry_clip.switch?
        loop do
          break if @stop
          state = @berry_clip.switch?
          if !prev_state && state
            invoke off_on
          end
          if prev_state && !state
            invoke on_off
          end
          if state
            invoke on
          else
            invoke off
          end

          prev_state = state
          sleep 0.01
        end
      end
    end

    def watch!
      watch
      @thread.join
    end

    def stop
      @stop = true
    end
  end
end
