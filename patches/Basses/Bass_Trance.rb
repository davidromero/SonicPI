use_bpm 140

#DRY
#live_loop :bass do
#  use_synth :fm
#  use_synth_defaults attack: 0.1, sustain: 0, release: 0.25, pan: 0, cutoff: rrand_i(80, 120), depth: 2, divisor: 2, amp: 2
#  n = (ring :e1, :e2, :e3, :e2).tick
#  play n
#  sleep 0.5
#end


#WET
live_loop :bass do
  with_fx :reverb, room: 0.5, mix: 0.4 do
    use_synth :fm
    use_synth_defaults attack: 0.1, sustain: 0, release: rrand(0.2, 0.25), pan: 0, cutoff: rrand_i(80, 120), depth: 2, divisor: 2, amp: 2
    n = (ring :e1, :e2, :e3, :e2).tick
    play n
    sleep 0.5
  end
end
