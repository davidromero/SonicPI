#DRY
#use_bpm 128

#use_synth :tb303
#live_loop :squelch do
#n = (ring :e1, :e2, :e3, :e2).tick
#play n, attack: 0.01, sustain: 0.25, release: 0.125, cutoff: 80, res: 0.7, wave: 0, sine: 1, sawthoot: 1, amp: 0.8
#sleep 0.5
#end


#WET and LOOPED
use_bpm 128

use_synth :tb303
with_fx :reverb, room: 0.5, mix: 0.4 do
  live_loop :squelch do
    n = (ring :e1, :e2, :e3, :e2).tick
    play n, attack: 0.01, sustain: 0.25, release: 0.125, cutoff: rrand_i(60, 99), res: 0.7, wave: 0, sine: 1, sawthoot: 1, amp: 0.8
    sleep 0.5
  end
end