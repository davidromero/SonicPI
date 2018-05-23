# Acid House with some boosting effects in the master bus
# Mehackit 2016

use_bpm 128

with_fx :distortion, mix: 0.1 do
  with_fx :nrhpf, mix: 0.06 do
    
    live_loop :bassorumpu do
      sample :bd_haus, amp: 2
      sleep 1
    end
    
    live_loop :luuppibiitti do
      sample :loop_compus, beat_stretch: 8, amp: 2
      sleep 8
    end
    
    live_loop :bassoraita do
      use_synth :saw
      use_synth_defaults release: rrand(0.05, 0.5), amp: rrand(2, 0.2)
      with_fx :reverb, mix: 0.4 do
        nuotit = (ring :C2, :C3, :r, :Eb3, :r, :G2, :Bb2, :r)
        play nuotit.tick, cutoff: rrand(40, 120)
      end
      sleep 0.25
    end
    
    live_loop :hihat do
      sample :drum_cymbal_pedal, amp: 0.15
      sleep 0.25
    end
    
    live_loop :virveli do
      sleep 1
      with_fx :reverb, mix: 0.5 do
        sample :perc_snap, amp: 1.5
      end
      sleep 2
    end
    
  end
end








